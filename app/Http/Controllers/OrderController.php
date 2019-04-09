<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service_cat;
use App\Service;
use App\Services_pulsa;
use App\Provider;
use App\Order;
use App\Orders_pulsa;
use App\Oprator;
use App\Helpers\Order_pulsa as OrderPulsa;
use App\Helpers\Order_sosmed as OrderSosmed;
use App\Activity;
use App\Balance_history;
use Auth;
use Alert;
use App\User;

class OrderController extends Controller
{
    public function __construct() {
    	$this->middleware('auth');
    }

    public function sosmed(){
        $cat = Service_cat::where('type','SOSMED')->where('status','Active')->get();
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

        $custom_comment = false;
        $likes_comment = false;
        
        if (isset($r->custom_comment)) {
            $custom_comment = true;
            
        }else if(isset($r->likes_comment)) {
            $likes_comment = true;
            
        }

        $api_id = '2076';
        $data_service = Service::where('id',$service_id)->first();  
        $pid = $data_service->pid;
        $min = $data_service->min;
        $max = $data_service->max;
        $total_price =  ($data_service->price + $data_service->keuntungan) / 1000 * $r->quantity ;

        $user = User::find(Auth::user()->id);
        if($user->balance < $total_price) {
            Alert::error('Saldo tidak cukup','Error');
            session()->flash('danger','Error: Saldo anda tidak cukup (2) ');
            return redirect()->back();
        }

        
        if($data_service->type == 'custom_comment') {
            $custom_comments = $r->custom_comment;
        }else if($data_service->type == 'comment_likes') {
            $post_links = $r->comment_likes;
        }
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

        if($data_service->provider->name == 'IRV'){
            if(isset($r->custom_comment)) {
                $order = OrderSosmed::irvankede($api_link, $api_key, $api_id, $pid, $post_link, $post_quantity, $custom_comments);
            }else if(isset($r->custom_link)) {
                $order = OrderSosmed::irvankede($api_link, $api_key, $api_id, $pid, $post_link, $post_quantity, false, $post_links);
            }else{
                $order = OrderSosmed::irvankede($api_link, $api_key, $api_id, $pid, $post_link, $post_quantity);
            }
        }else if($data_service->provider->name == 'JAP') {
            if(isset($r->custom_comment)) {
                $order = OrderSosmed::jap($api_key, $pid, $post_link, $post_quantity, $custom_comments);
            }else if(isset($r->custom_link)) {
                $order = OrderSosmed::jap($api_key, $pid, $post_link, $post_quantity, false, $post_links);
            }else{
                $order = OrderSosmed::jap($api_key, $pid, $post_link, $post_quantity);
            }
        }
        
     
        if($order['status'] == false){
            Alert::error('Server maintenance','Error');
            session()->flash('danger','Error: '.$order['message']);
            return redirect()->back();
        }
        

        $poid = $order["order_id"];    
        $order = new Order;
        $order->poid = $poid;
        $order->user_id = Auth::user()->id;
        $order->service_id = $service_id;
        $order->target = $post_link;
        $order->quantity = $post_quantity;
        $order->start_count = 0;
        $order->remains = $post_quantity;
        $order->price = $total_price;
        $order->status = 'Pending';
        $order->place_from = 'WEB';
        $order->notes = "-";
        $order->refund = 0;
        $order->save();

        
        $user->balance = $user->balance - $total_price;
        $user->save();

        $balance_history = new Balance_history;
        $balance_history->user_id = Auth::user()->id;
        $balance_history->action = "Cut Balance";
        $balance_history->desc = "Melakukan pemesanan sosial media sebesar Rp ".$total_price;
        $balance_history->save();

        $activity = new Activity;
        $activity->user_id = Auth::user()->id;
        $activity->type = "Order";
        $activity->description = "Melakukan pemesanan sosial media sebesar Rp ".$total_price;
        $activity->user_agent = $r->header('User-Agent');
        $activity->ip = $r->ip();
        $activity->save();

        Alert::success('Sukses order!','Sukses');
        session()->flash('success',"Pesanan anda akan segera diproses.<br>Layanan: $data_service->name <br> Target: $post_link <br> Jumlah: $post_quantity");
        return redirect()->back();
    }
    public function get_service(Request $r){
        $service = Service::where('category_id',$r->cat_id)->where('status','Active')->orderBy('name','asc')->get();
        $return = "<option value=''>Pilih salah satu..</option>";
        foreach($service as $data){
            $return .= "<option value='$data->id'>$data->name</option>";
        }
        return $return;
    }
    public function check_sosmed(Request $r) {
        $sid = $r->sid;
        $check = Service::find($sid);

        if($check->type == 'Custom Comment') {
            return "custom_comment";
        }else if($check->type == 'Comment Likes') {
            return "likes_comment";
        }else{
            return $check->type;
        }
    }
    public function get_service_data(Request $r){
        $service = Service::where('id',$r->sid)->first();
        $price = $service->price + $service->keuntungan;
        echo "<div class='alert alert-primary alert-has-icon'>
                              <div class='alert-icon'><i class='fas fa-info-circle'></i></div>
                              <div class='alert-body'>
                                <div class ='alert-title'>Informasi Layanan</div>
                                Harga/1000 : Rp $price<br>
                                Min order : $service->min<br>
                                Max order : $service->max<br>
                                Note : $service->note
                              </div>
                            </div>";
    }

    public function get_price(Request $r){
        $service = Service::where('id',$r->sid)->first();
        echo $service->price + $service->keuntungan;
    }

    public function sosmed_statistic() {
        
        return view('order.sosmed.statistic');
    }

    public function pulsa(){
        $cat = Service_cat::where('type','PULSA')->where('status','Active')->get();
        return view('order.pulsa.new', compact('cat'));
    }
    public function pulsa_order(Request $r){
        $r->validate([
            'service' => 'required|exists:services_pulsas,id',
            'target' => 'required',
        ]);

        $service = $r->service;
        $target = $r->target;

        $service_pulsa = Services_pulsa::find($service);
        $code = $service_pulsa->code;
        $name = $service_pulsa->name;
        $price = $service_pulsa->price;
        $provider_name = $service_pulsa->provider->name;

        $provider_link = $service_pulsa->provider->link;
        $provider_key = $service_pulsa->provider->key;

        if(Auth::user()->balance < $price) {
            Alert::error('Saldo tidak cukup','Gagal');
            session()->flash('danger','Gagal: Saldo tidak cukup');
            return redirect()->back();
        }

        if($provider_name == "PORTALPULSA") {
            $user_id = "P19231";
            $key = "dea373107d9cbaa88e10d67ac6dba65a";
            $secret = "b33feb6506c672544a395f7289a88f107c1c5599d482ffbb8b6367b7f2b51cee";

            if(isset($r->pln)){
                $order = OrderPulsa::portalpulsa($user_id, $key, $secret, $code, $target, $r->pln);
            }else{
                $order = OrderPulsa::portalpulsa($user_id, $key, $secret, $code, $target);
            }

            if($order['status'] == false) {
                Alert::error('Server maintenance','Gagal');
                session()->flash('danger','Gagal');
                return redirect()->back();
            }else{
                $oid = $order['order_id'];
                $poid = $oid;
            }
        }else if($provider_name == "OCEANH2H") {
            $order = OrderPulsa::oceanh2h($code, $target);

            if($order['status'] == false) {
                $message = $order['message'];
                Alert::error('Server maintenance','Gagal');
                session()->flash('danger','Gagal: '.$message);
                return redirect()->back();
            }else{
                $oid = $order['order_id'];
                $poid = $oid;
            }
        }else{
            Alert::error('Hubungi admin','Failed');
            session()->flash('danger','Provider salah, silahkan kontak admin');
            return redirect()->back();
        }

        $insert = new Orders_pulsa;
        $insert->oid = $oid;
        $insert->poid = $poid;
        $insert->user_id = Auth::user()->id;
        $insert->service_id = $service_pulsa->id;
        $insert->price = $price;
        $insert->data = $target;
        $insert->sn = "";
        $insert->status = 'Pending';
        $insert->place_from = 'WEB';
        $insert->refund = 0;
        $insert->save();

        $user = User::find(Auth::user()->id);
        $user->balance = $user->balance - $price;
        $user->save();

        $balance_history = new Balance_history;
        $balance_history->user_id = Auth::user()->id;
        $balance_history->action = "Cut Balance";
        $balance_history->desc = "Melakukan pemesanan $name seharga $price";
        $balance_history->save();

        $activity = new Activity;
        $activity->user_id = Auth::user()->id;
        $activity->type = "Order";
        $activity->description = "Melakukan pemesanan $name seharga $price";
        $activity->user_agent = $r->header('User-Agent');
        $activity->ip = $r->ip();
        $activity->save();

        Alert::success('Sukses melakukan pemesanan!','Sukses');
        session()->flash('success','<b>Pesanan telah diterima!</b> <br> <b>Layanan</b>: '.$name.' <br> <b>Harga:</b> Rp '.number_format($price).'<br><b>Tujuan:</b> '.$target);
        return redirect()->back();
        
    }
    public function pulsa_history(){
        $order = Orders_pulsa::where('user_id',auth()->user()->id)->orderBy('id','desc')->paginate(10);
        return view('order.pulsa.history', compact('order'));
    }
    public function get_service_pulsa(Request $r){
        $id = $r->id;

        $operators = Oprator::where('category_id',$id)->get();
        $hasil = "<option value=''>Pilih salah satu..</option>";
        foreach($operators as $operator) {
            $id = $operator->id;
            $name = $operator->name;
            $hasil .= "<option value='$id'>$name</option>";
        }
        return $hasil;
    }
    public function get_type_pulsa(Request $r){
        $id = $r->id;

        $services = Services_pulsa::where('oprator_id',$id)->get();

        if(empty($services)) {
            return "<option>Layanan belum tersedia</option>";
        }
        $hasil = "<option value=''>Pilih salah satu..</option>";
        foreach($services as $service) {
            $id = $service->id;
            $name = $service->name;

            $hasil .= "<option value='$id'>$name</option>";
        }
        return $hasil;
    }

    public function get_price_pulsa(Request $r) {
        $id = $r->id;
        $service = Services_pulsa::find($id);
        return $service->price;

    }

    public function tos() {
        return view('order.sosmed.tos');
    }

}
