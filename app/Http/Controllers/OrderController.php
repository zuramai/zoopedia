<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service_cat;
use App\Service;
use App\Provider;
use App\Order;
use Auth;

class OrderController extends Controller
{
    public function __construct() {
    	$this->middleware('auth');
    }

    public function sosmed(){
        $cat = Service_cat::where('type','SOSMED')->get();
        return view('order.sosmed.new', compact('cat'));
    }
    public function sosmed_history(Request $r){
        $search = $r->get('search');
        $order = Order::where('user_id', auth()->user()->id)->where('target','LIKE',"%$search%")
                                                            ->orWhere('id','LIKE',"%$search%")
                                                            ->orderBy('id','desc')->paginate(5);
                                                            
        return view('order.sosmed.history', compact('order'));
    }
    public function sosmed_post(Request $r) {

        if($r->service == NULL) {
            session()->flash('danger','Harap pilih layanan terlebih dahulu!');
            return redirect()->back();
        }

        $service_id = $r->service;
        $post_quantity = $r->quantity;
        $post_link = $r->target;

        $data_service = Service::where('id',$service_id)->first();  
        $pid = $data_service->pid;
        $min = $data_service->min;
        $max = $data_service->max;
        $r->validate([ 
                    'service'=>'required',
                    'quantity'=>"required|integer|min:$min|max:$max"
                ],
                [
                    'service.required'=>'Harap pilih layanan terlebih dahulu!',
                    'quantity.required'=>'Harap isi jumlah terlebih dahulu!',
                    'min'=>'Jumlah minimal adalah $min',
                    'max'=>'Jumlah maksimal adalah $max',
                ]);
        $api_link = $data_service->provider->link;
        $api_key = $data_service->provider->api_key;

        $api_postdata = "key=$api_key&action=add&service=$pid&link=$post_link&quantity=$post_quantity";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_link);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $api_postdata);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $chresult = curl_exec($ch);
        curl_close($ch);
        $json_result = json_decode($chresult,true);
        // dd($json_result);
     
        if(!isset($json_result["order_id"])){
            session()->flash('danger','Server maintenance!');
            dd($json_result);
            return redirect()->back();
        }else{
            $poid = $json_result["order_id"];
        }

        $order = new Order;
        $order->poid = $poid;
        $order->user_id = Auth::user()->id;
        $order->service_id = $service_id;
        $order->target = $post_link;
        $order->quantity = $post_quantity;
        $order->start_count = 0;
        $order->remains = 0;
        $order->price = $data_service->price + $data_service->keuntungan;
        $order->status = 'Pending';
        $order->place_from = 'WEB';
        $order->notes = "-";
        $order->refund = 0;
        $order->save();

        session()->flash('success',"Pesanan anda akan segera diproses. <br> Target: $post_link <br> Jumlah: $post_quantity");
        return redirect()->back();
    }
    public function get_zp(){
        // CHECK PROVIDER
        $prov = Provider::where('name','ZP')->first();
        $api_key = $prov->api_key;
        $api_link = $prov->link;

        
        $order_postdata = "key=$api_key&action=service";    
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_link);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $order_postdata);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $chresult = curl_exec($ch);
        curl_close($ch);
        $order_data = json_decode($chresult, true);
        $untung = 0;
        

        $jml = 0;
        foreach($order_data['data'] as $data){
            $id = $data['id'];
            $name = $data['name'];
            $note = $data['note'];
            $min = $data['min'];
            $max = $data['max'];
            $price = $data['rate'] + $untung;
            $status = $data['status'];
            $category = $data['category'];
            $price_oper = $price;
            
            $scat = Service_cat::where('name',$category)->first();

            if(empty($scat)){
                $ins_cat = new Service_cat;
                $ins_cat->name = $category;
                $ins_cat->type = "SOSMED";
                $ins_cat->status = "Active";
                $ins_cat->save();
                $id_cat = $ins_cat->id;
            }else{
                $id_cat = $scat->id;
            }
            $service = new Service;
            $service->name = $name;
            $service->note = $note;    
            $service->category_id = $id_cat;    
            $service->min = $min;    
            $service->max = $max;    
            $service->price = $price;    
            $service->price_oper = $price_oper;    
            $service->keuntungan = $untung;    
            $service->status = $status;    
            $service->provider_id = $prov->id;
            $service->pid = $id;
            $service->save();
            
            echo "Sukses insert! <br> ID : $id <br> Layanan : $service <br> Min : $min <br> Max : $max <br> Price : $price <br> Status : $status <br> $category : $category <br> Note : $note <br><br>";
            
        }


    }
    public function get_service(Request $r){
        $service = Service::where('category_id',$r->cat_id)->orderBy('name','asc')->get();
        foreach($service as $data){
            echo "<option value='$data->id'>$data->name</option>";
        }

    }
    public function get_service_data(Request $r){
        $service = Service::where('id',$r->sid)->first();
        $price = $service->price + $service->keuntungan;
        echo "<div class='alert alert-primary alert-has-icon'>
                              <div class='alert-icon'><i class='fas fa-info-circle'></i></div>
                              <div class='alert-body'>
                                <div class ='alert-title'>Informasi Layanan</div>
                                Harga/1000 : Rp $service->price<br>
                                Min order : $service->min<br>
                                Max order : $service->max<br>
                                Note : $service->note
                              </div>
                            </div>";
    }

    public function get_price(Request $r){
        $service = Service::where('id',$r->sid)->first();
        echo $service->price;
    }

    public function sosmed_statistic() {
        
        return view('order.sosmed.statistic');
    }

    public function pulsa(){
        return view('order.pulsa.new');
    }
    public function pulsa_order(Request $r){
        return view('order.pulsa.new');
    }
    public function pulsa_history(){
        return view('order.pulsa.history');
    }
    public function get_service_pulsa(){}
    public function get_service_data_pulsa(){}

}
