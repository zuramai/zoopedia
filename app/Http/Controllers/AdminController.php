<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Service_cat;
use App\Service;
use App\Services_pulsa;
use App\User;
use App\Order;
use App\News;
use App\Provider;

class AdminController extends Controller
{
	public function __construct(){
		$this->middleware('auth');
	}
    
    public function index(){}
    public function report(){}

    public function services(){
        $service = Service::all();
        return view('developer.services.index', compact('service'));
    }
    public function detail_services(){}
    public function add_services(){
        $provider = Provider::where('type','SOSMED')->get();
        $category = Service_cat::where('type','SOSMED')->get();
        return view('developer.services.add', compact('category','provider'));
    }
    public function post_add_services(Request $r){
        $r->validate([
            'name'=>'required',
            'category'=>'required',
            'note'=>'required',
            'min'=>'required',
            'max'=>'required',
            'price'=>'required',
            'keuntungan'=>'required',
            'price_oper'=>'required',
            'pid'=>'required',
            'type' => 'required|in:Basic,Custom Comment,Comment Likes',
            'provider'=>'required',
        ]);
        $name = $r->name;
        $category = $r->category;
        $note = $r->note;
        $min = $r->min;
        $max = $r->max;
        $type = $r->type;
        $price = $r->price;
        $keuntungan = $r->keuntungan;
        $price_oper = $r->price_oper;
        $pid = $r->pid;
        $provider = $r->provider;

        $service = new Service;
        $service->name = $name;
        $service->category_id = $category;
        $service->note = $note;
        $service->min = $min;
        $service->max = $max;
        $service->price = $price;
        $service->price_oper = $price_oper;
        $service->keuntungan = $keuntungan;
        $service->provider_id = $provider;
        $service->pid = $pid;
        $service->save();

        session()->flash('success','Success add service!');
        return redirect('developer/services');
    }
    public function delete_services(Request $r) {
        $service = Service::find($r->id);
        $service->delete();

        session()->flash('success','Sukses hapus layanan!');
        return redirect()->back();
    }
    public function detail_service($id) {
        $service = Service::where('id',$id)->get();
        return view('developer.services.detail',compact('service'));
    }
    public function edit_services($id){
        $provider = Provider::where('type','SOSMED')->get();
        $category = Service_cat::where('type','SOSMED')->get();
        $service = Service::where('id',$id)->first();
        return view('developer.services.edit', compact('service','provider','category'));
    }

    public function update_services($id,Request $r){
        $r->validate([
            'name'=>'required',
            'category'=>'required',
            'note'=>'required',
            'min'=>'required',
            'max'=>'required',
            'price'=>'required',
            'keuntungan'=>'required',
            'price_oper'=>'required',
            'pid'=>'required',
            'provider'=>'required',
        ]);
        $name = $r->name;
        $category = $r->category;
        $note = $r->note;
        $min = $r->min;
        $max = $r->max;
        $price = $r->price;
        $keuntungan = $r->keuntungan;
        $price_oper = $r->price_oper;
        $pid = $r->pid;
        $provider = $r->provider;
        
        $service = Service::find($id);
        $service->name = $name;
        $service->category_id = $category;
        $service->note = $note;
        $service->min = $min;
        $service->max = $max;
        $service->price = $price;
        $service->price_oper = $price_oper;
        $service->keuntungan = $keuntungan;
        $service->provider_id = $provider;
        $service->pid = $pid;
        $service->save();

        session()->flash('success','Success update service!');
        return redirect('developer/services');
    }

    public function service_cat(){
        $service_cat = Service_cat::paginate(15);
        return view('developer.services.category.index', compact('service_cat'));
    }
    public function add_service_cat(){
        return view('developer.services.category.add');

    }
    public function post_add_service_cat(Request $r){
        $r->validate([
            'name'=>'required|min:5',
            'type'=>'required|min:1'
        ]);

        $name = $r->name;
        $type = $r->type;

        $cat = new Service_cat;
        $cat->name = $name;
        $cat->type = $type;
        $cat->save();

        session()->flash('success','Sukses tambah kategori!');
        return redirect(route('services_cat'));
    }
    public function delete_service_cat(Request $r){
        $id = $r->id;
        $find = Service_cat::find($id);
        $find->delete();

        session()->flash('success','Sukses delete kategori!');
        return redirect()->back();
    }
    public function edit_service_cat($id){
        $scat = Service_cat::where('id',$id)->first();
        return view('developer.services.category.edit', compact('scat'));
    }
    public function update_service_cat(Request $r,$id){
        $r->validate([
            'name'=>'required|min:5',
            'type'=>'required|min:1'
        ]); 

        $name = $r->name;
        $type = $r->type;
        $status = $r->status;

        $cat = Service_cat::find($id);
        $cat->name = $name;
        $cat->type = $type;
        $cat->save();

        session()->flash('success','Sukses tambah kategori!');
        return redirect(route('services_cat'));   
    }

    public function manage_orders_sosmed(){
        $orders = Order::all();
        return view('developer/orders/index', compact('orders'));
    }
    public function edit_orders_sosmed($id){
        $order = Order::where('id',$id)->first();
        return view('developer/orders/edit', compact('order'));
    }
    public function add_orders_sosmed($id){}
    public function update_orders_sosmed(Request $r, $id){
        $r->validate([
            'status' => 'required',
            'start'=>'required',
            'remains'=>'required'
        ]);
        $order = Order::find($id);
        $order->start_count = $r->start;
        $order->remains = $r->remains;
        $order->status = $r->status;
        $order->save();

        session()->flash('success','Sukses ubah data order!');
        return redirect('developer/orders/sosmed');
    }

    public function services_pulsa() {
        $service = Services_pulsa::all();
        return view('developer.services.pulsa.index', compact('service'));
    }
    
    public function manage_orders_pulsa(){}
    public function edit_orders_pulsa(){}
    public function update_orders_pulsa(){}

    public function manage_users(){
        $users = User::all();
        return view('developer.users.index', compact('users'));
    }
    public function add_users() {
        return view('developer.users.add');
    }
    public function users_detail($id) {
        $user = User::where('id',$id);
        return view('developer.users.detail', compact('user'));
    }
    public function add_users_post(Request $r) {
        $r->validate([
            'name' => 'required|min:5',
            'email' => 'required|email|unique:users',
            'balance' =>'integer',
            'password' => 'min:5',
            'level' => 'required'
        ]);
        $name = $r->name;
        $email = $r->email;
        $password = Hash::make($r->password);
        $balance = $r->balance;
        $level = $r->level;
        $api_key = Hash::make(Str::random(5));
        
        $user = new User;
        $user->name = $name;
        $user->email = $email;
        $user->password = $password;
        $user->balance = $balance;
        $user->level = $level;
        $user->status = 'Active';
        $user->api_key = $api_key;
        $user->uplink = 'Server';
        $user->save();

        session()->flash('success','Sukses tambah pengguna!');
        return redirect('developer/users');
        
    }
    public function edit_users($id){
        $user = User::where('id',$id)->first();
        return view('developer.users.edit', compact('user'));
    }
    public function update_users(Request $r, $id) {
        $user = User::where('id',$id)->first();
        $r->validate([
            'name' => 'required|min:5',
            'email' => 'required|email',
            'balance' =>'integer',
            'password' => 'min:5',
            'level' => 'required'
        ]);
        $name = $r->name;
        $email = $r->email;
        $password = $r->password;
        $balance = $r->balance;
        $level = $r->level;

        if($password != $user->password) {
            $newpass = Hash::make($password);
        }else{
            $newpass = $password;
        }

        $update = User::find($id);
        $update->name = $name;
        $update->email = $email;
        $update->password = $newpass;
        $update->balance = $balance;
        $update->level = $level;
        $update->update();
        
        session()->flash('success','Success update users!');
        return redirect('developer/users');


    }
    public function delete_users(Request $r){
        $id = $r->id;
        $del = User::find($id);
        $del->delete();
        
        session()->flash('success','Sukses hapus pengguna!');
        return redirect()->back();
    }

    public function manage_deposit(){}
    public function accept_deposit(){}
    public function decline_deposit(){}

    public function deposit_method(){}
    public function add_deposit_method(){}
    public function post_deposit_method(){}
    public function edit_deposit_method(){}
    public function update_deposit_method(){}

    public function manage_news(){
        $news = News::all();
        return view('developer.news.index', compact('news'));
    }
    public function add_news(){
        return view('developer.news.add');
    }
    public function edit_news($id){
        $news = News::find($id);
        return view('developer.news.add', compact('news'));
    }
    public function update_news(Request $r, $id){
        $news = News::find($id);
    }

    public function manage_tickets(){}
    public function ticket($id){}
    public function ticket_chat($id, Request $r){}

    public function history_all_transfer(){}
    public function history_all_transaction(){}
}
