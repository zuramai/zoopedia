<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use App\Helpers\BCA as Deposit_BCA;
use App\Deposit;
use App\Deposit_method;
use App\User;
use App\Order;
use App\Provider;
use App\Orders_pulsa;
use App\Balance_history;
use DB;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        
        
        // REFUND ORDER SOSMED
        $schedule->call(function() {
            $orders = Order::whereIn('status',['Error','Partial'])->where('refund',0)->get();

            foreach($orders as $order) {
                $id = $order->id;
                $start = $order->start_count;
                $remains = $order->remains;
                $price = $order->price;
                $quantity = $order->quantity;

                if($order->status == 'Error') {
                    $find = Order::find($id);
                    $find->refund = 1;
                    $find->save();

                    $user = User::find($order->id);
                    $user->balance += $price;
                    $user->save();

                    $balance_history = new Balance_history;
                    $balance_history->user_id = $order->id;
                    $balance_history->action = "Refund";
                    $balance_history->desc = "Saldo dikembalikan sebesar Rp $price untuk order id $id";
                    $balance_history->save();
                    echo "Refunded Rp $price for order id => $id";
                }else if($order->status == 'Partial'){
                    $find = Order::find($id);
                    $find->refund = 1;
                    $find->save();

                    $user = User::find($order->id);
                    $bagi = $remains / $quantity;
                    $newprice = $price / $bagi;
                    $user->balance += $newprice;
                    $user->save();

                    $balance_history = new Balance_history;
                    $balance_history->user_id = $order->id;
                    $balance_history->action = "Refund";
                    $balance_history->desc = "Saldo dikembalikan sebesar Rp $newprice untuk order id $id";
                    $balance_history->save();
                    echo "Refunded Rp $newprice for order id => $id";
                }
            }
        });
        // REFUND ORDER PULSA
        $schedule->call(function() {
            $orders = Orders_pulsa::whereIn('status',['Error'])->where('refund',0)->get();

            foreach($orders as $order) {
                $id = $order->id;
                $start = $order->start_count;
                $remains = $order->remains;
                $price = $order->price;
                $quantity = $order->quantity;

                if($order->status == 'Error') {
                    $find = Orders_pulsa::find($id);
                    $find->refund = 1;
                    $find->save();

                    $user = User::find($order->id);
                    $user->balance += $price;
                    $user->save();

                    $balance_history = new Balance_history;
                    $balance_history->user_id = $order->id;
                    $balance_history->action = "Refund";
                    $balance_history->desc = "Saldo dikembalikan sebesar Rp $price untuk order id $id";
                    $balance_history->save();
                    echo "Refunded Rp $price for order id => $id";
                }
            }
        });
        // STATUS PORTALPULSA
        $schedule->call(function() {
            $orders = DB::table('orders_pulsas')->select('*')
                        ->where('orders_pulsas.status','Pending')
                        ->join('services_pulsas','orders_pulsas.service_id', 'services_pulsas.id')
                        ->join('providers','services_pulsas.provider_id','providers.id')
                        ->get();
            if(!$orders){
                return "Order pending not found";
            }

            foreach($orders as $order) {
                echo "CHECKING";
                $oid = $order->oid;
            
                $api_postdata = "inquiry=STATUS&trxid_api=$oid";
                $url = 'https://portalpulsa.com/api/connect/';
                
                $header = array(
                            'portal-userid: P19231',
                            'portal-key: dea373107d9cbaa88e10d67ac6dba65a', // lihat hasil autogenerate di member area
                            'portal-secret: b33feb6506c672544a395f7289a88f107c1c5599d482ffbb8b6367b7f2b51cee', // lihat hasil autogenerate di member area
                            );
                
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, $url);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
                curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
                curl_setopt($ch, CURLOPT_POST, 1);
                curl_setopt($ch, CURLOPT_POSTFIELDS, $api_postdata);
                $chresult = curl_exec($ch);
                curl_close($ch);

                $json_result = json_decode($chresult,true);
                // echo $chresult;  
                if(isset($json_result['message'][0]['sn']))
                {
                    echo "SUCCESS";
                    $sn = $json_result['message'][0]['sn'];    
                    $u_status = $json_result['message'][0]['status'];
                }else if($json_result['result'] == 'failed'){
                    $sn = $json_result['message'];    
                    $u_status = 2;
                }else{
                    $u_status = $json_result['message'][0]['status'];
                    $sn = $json_result['message'][0]['note'];   
                }
                // echo $chresult;
                 if ($u_status == "1") {
                    $un_status = "Pending";
                 } else if ($u_status == "2") {
                    $un_status = "Error";
                 } else if ($u_status == "3") {
                    $un_status = "Partial";
                 } else if ($u_status == "4") {
                    $un_status = "Success";
                 } else {
                     $un_status = "Pending";
                 }

                 $update = Orders_pulsa::find($order->id);
                 $update->status = $un_status;
                 $update->sn = $sn;
                 $update->save(); 

                 echo "ORDER ID => $oid, Status => $un_status -";

            }
        });     
        // STATUS IRVANKEDE
        $schedule->call(function() {
            echo "CHECKING IRV";
            $api_id = 2076;
            $provider = Provider::where('name','IRV')->first();
            $api_key = $provider->api_key;

            $order = Order::select('orders.id','poid')
                ->join('services','orders.service_id','services.id')
                ->where('services.provider_id',$provider->id)
                ->whereIn('orders.status', ['Pending','Processing'])->get();

            foreach($order as $data_order) {
                $poid = $data_order->poid;
                $api_postdata = "api_id=$api_id&api_key=$api_key&id=$poid";

                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, 'https://api.irvankede-smm.co.id/status');
                curl_setopt($ch, CURLOPT_POST, 1);
                curl_setopt($ch, CURLOPT_POSTFIELDS, $api_postdata);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                $chresult = curl_exec($ch);
                curl_close($ch);
                $json_result = json_decode($chresult);

                if($json_result->status == true) {
                    $update = Order::find($data_order->id);
                    $update->status = $json_result->data->status;
                    $update->start_count = $json_result->data->start_count;
                    $update->remains = $json_result->data->remains;
                    $update->save();
                    echo "SUKSES UPDATE IRV ID ".$update->id;
                }
            }
        });
        //STATUS JAP
        $schedule->call(function() {
            echo "CHECKING JAP";
            $provider = Provider::where('name','IRV')->first();
            $api_key = $provider->api_key;

            $order = Order::select('orders.id','poid')
                ->join('services','orders.service_id','services.id')
                ->where('services.provider_id',$provider->id)
                ->whereIn('orders.status', ['Pending','Processing'])->get();


            $api_key = $provider->api_key;
            foreach($order as $data) {
                $poid = $data->poid;
                $api_postdata = "key=$apikey&action=status&order=$poid";
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, "https://justanotherpanel.com/api/v2");
                curl_setopt($ch, CURLOPT_POST, 1);
                curl_setopt($ch, CURLOPT_POSTFIELDS, $api_postdata);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                $chresult = curl_exec($ch);
                curl_close($ch);
                $json_result = json_decode($chresult);
                // dd($json_result);

                // print_r($json_result);
                $u_status = $json_result->status;
                  $u_start = $json_result->start_count;
                  $u_remains = $json_result->remains;
                 if ($u_status == "Pending") {
                    $un_status = "Pending";
                 } else if ($u_status == "Processing") {
                    $un_status = "Processing";
                 }  else if ($u_status == "In progress") {
                    $un_status = "Processing";
                 } else if ($u_status == "Partial") {
                    $un_status = "Partial";
                 } else if ($u_status == "Error") {
                    $un_status = "Error";
                 } else if ($u_status == "Completed") {
                    $un_status = "Success";
                 } else if ($u_status == "Canceled") {
                    $un_status = "Error";
                 } else {
                     $un_status = "Pending";
                 }

                 if(!isset($json_result->error)) {
                    $update = Order::find($data->id);
                    $update->status = $un_status;
                    $update->start_count = $u_start;
                    $update->remains = $u_remains;
                    $update->save();
                    echo "SUKSES UPDATE JAP ID ".$update->id;
                }

            }
        });
        // DEPOSIT BCA
        // $schedule->call(function() {
        //     echo "CHECKING BCA";
        //     $user = env('USER_BCA');
        //     $pass = env('PASS_BCA');

        //     $deposits = Deposit::select('deposits.*')
        //                 ->where('deposits.status','Pending')
        //                 ->where('deposit_methods.name','BANK BCA')
        //                 ->join('deposit_methods','deposit_methods.id','=', 'deposits.method')
        //                 ->get();
        //     foreach($deposits as $deposit) {
        //         $jumlah = $deposit->quantity;
        //         $user = $deposit->user_id;
        //         $get_balance = $deposit->get_balance;

        //         $check = Deposit_BCA::check($user, $pass, $jumlah);
        //         echo $check;
        //         if($check == true) {
        //             $user = Deposit::find($deposit->id);
        //             $user->balance = $user->balance + $get_balance;
        //             $user->save();

        //             $balance_history = new Balance_history;
        //             $balance_history->user_id = Auth::user()->id;
        //             $balance_history->action = "Add Balance";
        //             $balance_history->desc = "Deposit sukses, saldo masuk sebesar $get_balance";
        //             $balance_history->save();
        //         }
        //     }
        // });
        // DEPOSIT TELKOMSEL
        $schedule->call(function() {
            
        });
    }

    

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
