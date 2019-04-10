<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Auth;
use App\Service_cat;
use App\Service;
use App\Services_pulsa;
use App\User;
use App\Order;
use App\Orders_pulsa;
use App\News;
use App\Provider;
use App\Staff;
use App\Oprator;
use App\Activity;
use App\Balance_history;
use App\Deposit;
use App\Ticket;
use App\Ticket_content;
use App\Deposit_method;
use App\Invitation_code;
use Alert;

class AdminController extends Controller
{
	public function __construct(){
		$this->middleware('auth');
	}
    
    public function index(){}
    public function report(){}

    public function services(Request $r){
        $search = $r->get('search');
        $service = Service::where('name','LIKE',"%$search%")->orderBy('id','desc')->paginate(15);
        $service->appends($r->only('search'));
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
        $service->type = $type;
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
            'type' => 'required|in:Basic,Custom Comment,Comment Likes',
            'pid'=>'required',
            'provider'=>'required',
        ]);
        $name = $r->name;
        $category = $r->category;
        $type = $r->type;
        $note = $r->note;
        $min = $r->min;
        $max = $r->max;
        $price = $r->price;
        $keuntungan = $r->keuntungan;
        $price_oper = $r->price_oper;
        $pid = $r->pid;
        $provider = $r->provider;
        $status = $r->status;
        
        $service = Service::find($id);
        $service->name = $name;
        $service->category_id = $category;
        $service->note = $note;
        $service->min = $min;
        $service->max = $max;
        $service->price = $price;
        $service->type = $type;
        $service->price_oper = $price_oper;
        $service->keuntungan = $keuntungan;
        $service->provider_id = $provider;
        $service->pid = $pid;
        $service->status = $status;
        $service->save();

        session()->flash('success','Success update service!');
        return redirect('developer/services');
    }

    public function service_cat(Request $r){
        $search = $r->get('search');
        $service_cat = Service_cat::where('name','LIKE',"%$search%")->where('type','SOSMED')->paginate(15);
        $service_cat->appends($r->only('search'));
        return view('developer.services.category.index', compact('service_cat'));
    }
    public function service_cat_pulsa(Request $r) {
        $search = $r->get('search');
        $service_cat = Service_cat::where('type','PULSA')->where('name','LIKE',"%$search%")->orderBy('id','desc')->paginate(5);
        $oprator = Oprator::orderBy('id','desc')->get();
        return view('developer.services.category.pulsa.index', compact('service_cat','oprator'));
    }
    public function service_cat_pulsa_edit($id) {
        $scat = Service_cat::find($id);

        return view('developer.services.category.pulsa.edit', compact('scat'));
    }
    public function service_cat_pulsa_update(Request $r, $id) {
        $scat = Service_cat::find($id);
        $scat->name = $r->name;
        $scat->type = $r->type;
        $scat->status = $r->status;
        $scat->save();

        Alert::success('Sukses mengubah kategori!','Sukses!');
        return redirect(route('services_cat_pulsa'));
    }
    public function service_cat_pulsa_delete(Request $r) {
        $scat = Service_cat::find($r->id);
        $scat->delete();

        Alert::success('Sukses hapus kategori!','Sukses!');
        return redirect()->back();
    }
    public function service_cat_oprator_delete(Request $r) {
        $scat = Oprator::find($r->id);
        $scat->delete();

        Alert::success('Sukses hapus operator!','Sukses!');
        return redirect()->back();   
    }
    public function add_services_cat_pulsa() {
        return view('developer.services.category.pulsa.add');
    }
    public function services_cat_pulsa_add_post(Request $r) {
        $r->validate([
            'name'=>'required|min:2',
            'type'=>'required|min:1'
        ]);

        $name = $r->name;
        $type = $r->type;

        $cat = new Service_cat;
        $cat->name = $name;
        $cat->type = $type;
        $cat->save();

        Alert::success('Sukses tambah kategori!','Success');
        return redirect(route('services_cat_pulsa'));
    }
    public function operator_add() {
        $cat = Service_cat::where('type','PULSA')->get();
        return view('developer.services.category.pulsa.operator.add',compact('cat'));
    }
    public function operator_add_post(Request $r) {
        $r->validate([
            'name' => 'required',
            'category' => 'required'
        ]);

        $oprator = new Oprator;
        $oprator->name = $r->name;
        $oprator->category_id = $r->category;
        $oprator->save();

        Alert::success('Sukses menambah operator!','Sukses!');
        return redirect(route('services_cat_pulsa'));
    }
    public function operator_edit($id) {
        $cat = Service_cat::where('type','PULSA')->get();
        $oprator = Oprator::find($id);
        return view('developer.services.category.pulsa.operator.edit', compact('oprator','cat'));

    }
    public function operator_update(Request $r, $id){
        $r->validate([
            'name' => 'required',
            'category' => 'required'
        ]);

        $oprator = Oprator::find($id);
        $oprator->name = $r->name;
        $oprator->category_id = $r->category;
        $oprator->save();

        Alert::success('Sukses mengubah operator!','Sukses!');
        return redirect(route('services_cat_pulsa'));
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
        $cat->status = $status;
        $cat->save();

        session()->flash('success','Sukses ubah kategori!');
        return redirect(route('services_cat'));   
    }

    public function manage_orders_sosmed(Request $r){
        $search = $r->get('search');
        $success = Order::where('status','Success');
        $total = Order::whereNotIn('status', ['Error','Partial'])->sum('price');
        
        $orders = Order::where('id','LIKE',"%$search%")->orWhere('target','LIKE',"%$search%")->orderBy('id','desc')->paginate(10);
        $orders->appends($r->only('search'));
        return view('developer/orders/index', compact('orders','success','total'));
    }
    public function edit_orders_sosmed($id){
        $order = Order::where('id',$id)->first();
        return view('developer/orders/edit', compact('order'));
    }
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

    public function services_pulsa(Request $r) {
        $search = $r->get('search');
        $services = Services_pulsa::where('name','LIKE',"%$search%")->simplePaginate(10);
        $services->appends($r->only('search'));

        return view('developer.services.pulsa.index', compact('services'));
    }
    public function services_pulsa_add() {
        $category = Service_cat::where('type','PULSA')->get();
        $operator = Oprator::orderBy('name','ASC')->get();
        $provider = Provider::where('type','PULSA')->get();
        return view('developer.services.pulsa.add', compact('provider','category','operator'));
    }
    public function delete_services_pulsa(Request $r) {
        Services_pulsa::find($r->id)->delete();
        Alert::success('Sukses hapus layanan!','Sukses!');
        return redirect()->back();
    }
    public function edit_services_pulsa($id) {
        $service = Services_pulsa::find($id);
        $category = Service_cat::where('type','PULSA')->get();
        $operator = Oprator::orderBy('name','ASC')->get();
        $provider = Provider::where('type','PULSA')->get();
        return view('developer.services.pulsa.edit', compact('provider','category','operator','service'));
    }
    public function post_add_services_pulsa(Request $r) {
        $r->validate([
            'category' => 'required|exists:service_cats,id',
            'oprator' => 'required|exists:services_pulsa_operators,id',
            'name' => 'required|string',
            'price' => 'required|integer',
            'code' => 'required',
            'provider' => 'required|exists:providers,id'
        ]);

        $pulsa = new Services_pulsa;
        $pulsa->code = $r->code;
        $pulsa->oprator_id = $r->oprator;
        $pulsa->category_id = $r->category;
        $pulsa->name = $r->name;
        $pulsa->provider_id = $r->provider;
        $pulsa->price = $r->price;
        $pulsa->status = 'Active';
        $pulsa->save();

        Alert::success('Sukses tambah layanan!','Sukses!');
        return redirect('developer/services_pulsa');
    }
    public function update_services_pulsa(Request $r,$id) {
        $r->validate([
            'category' => 'required|exists:service_cats,id',
            'oprator' => 'required|exists:services_pulsa_operators,id',
            'name' => 'required|string',
            'price' => 'required|integer',
            'code' => 'required',
            'provider' => 'required|exists:providers,id',
            'status'=>'required|in:Active,Not Active'
        ]);

        $pulsa = Services_pulsa::find($id);
        $pulsa->code = $r->code;
        $pulsa->oprator_id = $r->oprator;
        $pulsa->category_id = $r->category;
        $pulsa->name = $r->name;
        $pulsa->provider_id = $r->provider;
        $pulsa->price = $r->price;
        $pulsa->status = $r->status;
        $pulsa->save();

        Alert::success('Sukses ubah layanan!','Sukses!');
        return redirect('developer/services_pulsa');
    }
    public function manage_orders_pulsa(Request $r){
        $search = $r->get('search');
        $orders = Orders_pulsa::where('id','LIKE',"%$search%")->orWhere('data','LIKE',"%$search%")->orderBy('id','desc')->paginate(10);
        $orders->appends($r->only('search'));

        return view('developer.orders.pulsa.index', compact('orders'));
    }
    public function edit_orders_pulsa(Request $r, $id){
        $order = Orders_pulsa::find($id);
        return view('developer.orders.pulsa.edit', compact('order'));
    }
    public function update_orders_pulsa(Request $r,$id){
        $r->validate([
            'status' => 'required|in:Pending,Processing,Success,Error'
        ]);

        $sn = $r->sn;
        $status = $r->status;

        $orders = Orders_pulsa::find($id);
        $orders->sn = $sn;
        $orders->status = $status;
        $orders->save();

        Alert::success('Sukses update order!','Sukses!');
        return redirect('developer/orders/pulsa');

    }

    public function manage_users(Request $r){
        $search = $r->get('search');
        $users = User::where('email','LIKE',"%$search%")->orWhere('name','LIKE',"%$search%")->paginate(10);
        $users->appends($r->only('search'));
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

    public function manage_deposit(Request $r){
        $search = $r->get('search');
        $deposits = Deposit::where('id','LIKE',"%$search%")->orderBy('id','desc')->paginate(10);
        $deposits->appends($r->only('search'));
        return view('developer.deposits.index', compact('deposits'));
    }
    public function accept_deposit(Request $r){
        $id = $r->id;
        $deposit = Deposit::find(   $id);
        $get_balance = $deposit->get_balance;
        $id_user = $deposit->user_id;
        $deposit->status = 'Success';
        $deposit->save();


        $balance_history = new Balance_history;
        $balance_history->user_id = $id_user;
        $balance_history->action = "Add Balance";
        $balance_history->desc = "Saldo ditambahkan sebesar Rp ".$get_balance;
        $balance_history->save();               

        Alert::success('Sukses menerima deposit!','Sukses!');
        return redirect()->back();
    }
    public function decline_deposit(Request $r){
        $id = $r->id;
        $deposit = Deposit::find($id);
        $deposit->status = 'Canceled';
        $deposit->save();


        session()->flash('success','Sukses tolak deposit');
        Alert::success('Sukses tolak deposit','Sukses');
        return redirect()->back();
    }

    public function deposit_method(){
        $methods = Deposit_method::paginate(10);
        return view('developer.deposits.method.index', compact('methods'));
    }
    public function add_deposit_method(){
        return view('developer.deposits.method.add');
    }
    public function post_deposit_method(Request $r){
        $name = $r->name;
        $type = $r->type;
        $rate = $r->rate;
        $rekening = $r->rekening;

        $r->validate([
            'name' => 'required',
            'type' => 'required',
            'rate' => 'required',
            'rekening' => 'required',
        ]);

        $method = new Deposit_method;
        $method->name = $name;
        $method->type = $type;
        $method->rate = $rate;
        $method->data = $rekening;
        $method->status = 'Active';
        $method->save();


        Alert::success('Sukses tambah metode deposit!','Sukses!');
        return redirect('developer/deposit/method');
    }
    public function edit_deposit_method($id){
        $method = Deposit_method::find($id);
        return view('developer.deposits.method.edit', compact('method'));
    }
    public function update_deposit_method($id,Request $r){
        $name = $r->name;
        $type = $r->type;
        $rate = $r->rate;
        $rekening = $r->rekening;
        $status = $r->status;

        $r->validate([
            'name' => 'required',
            'type' => 'required',
            'rate' => 'required',
            'status' => 'required',
        ]);

        $method = Deposit_method::find($id);
        $method->name = $name;
        $method->type = $type;
        $method->rate = $rate;
        $method->data = $rekening;
        $method->status = $status;
        $method->save();


        Alert::success('Sukses ubah metode deposit!','Sukses!');
        return redirect('developer/deposit/method');
    }

    public function delete_deposit_method(Request $r) {
        $r->validate(['id'=>'required']);
        Deposit_method::find($r->id)->delete();

        Alert::success('Sukses hapus metode deposit!','Sukses!');
        return redirect()->back();
    }

    public function manage_news(){
        $news = News::all();
        return view('developer.news.index', compact('news'));
    }
    public function add_news(){
        return view('developer.news.add');
    }
    public function add_news_post(Request $r) {

        $type = $r->type;
        $title = $r->title;
        $content = $r->content;

        $validate = $r->validate([
            'type' => 'required',
            'title' => 'required',
            'content' => 'required'
        ]);



        $news = new News;
        $news->title = $title;
        $news->type = $type;
        $news->content = $content;
        $news->save();

        Alert::success('Sukses menambahkan berita!', 'Sukses!');
        return redirect('/developer/news');
    }
    public function edit_news($id){
        $news = News::find($id);
        return view('developer.news.edit', compact('news'));
    }
    public function update_news(Request $r, $id){
        $news = News::find($id);
        $news->type = $r->type;
        $news->title = $r->title;
        $news->content = $r->content;
        $news->save();

        Alert::success('Sukses update berita!','Sukses!');
        return redirect('/developer/news');

    }
    public function delete_news(Request $r) {
        $news = News::find($r->id);
        $news->delete();

        Alert::success('Sukses hapus berita!','Success!');
        session()->flash('success','Sukses hapus berita!');
        return redirect('developer/news');
    }

    public function invitation_code() {
        $code = Invitation_code::all();
        return view('developer.invitation_code.index', compact('code'));
    }
    public function invitation_code_add_random(Request $r) {
        $code = new Invitation_code;
        $code->code = Str::random(10);
        $code->remains = 1;
        $code->status = 'Open';
        $code->save();

        Alert::success('Sukses menambahkan kode!','Success');
        return redirect()->back();
    }
    public function invitation_code_add(Request $r) {
        $code = new Invitation_code;
        $code->code = $r->code;
        $code->remains = $r->max;
        $code->status = 'Open';
        $code->save();

        Alert::success('Sukses menambahkan kode!','Success');
        return redirect()->back();
    }

    public function invitation_code_delete(Request $r) {
        $id = Invitation_code::find($r->id);
        $id->delete();

        Alert::success('Sukses menghapus kode!','Success');
        return redirect()->back();   
    }

    public function ticket_index() {
        $tickets = Ticket::orderBy('id','desc')->get();
        return view('developer.tickets.index',compact('tickets'));
    }

    public function ticket_detail($id) {
        $ticket = Ticket::find($id)->content;
        // dd($ticket);
        return view('developer.tickets.detail', compact('ticket'));
    }

    public function ticket_add_view() {
        return view('developer.tickets.add');
    }


    public function ticket_detail_add(Request $r, $id) {
        $ticket = Ticket::find($id);
        $ticket->status = 'Responded';
        $ticket->save();

        $content = new Ticket_content;
        $content->user_id = Auth::user()->id;
        $content->ticket_id =  $id;
        $content->content = $r->content;
        $content->save();

        $activity = new Activity;
        $activity->user_id = Auth::user()->id;
        $activity->type = "Ticket";
        $activity->description = "Membalas tiket ".$ticket->subject;
        $activity->user_agent = $r->header('User-Agent');
        $activity->ip = $r->ip();
        $activity->save();

        Alert::success('Sukses membalas tiket','Sukses!');
        return redirect()->back();
    }

    public function activity() {
        $activities =  Activity::orderBy('id','desc')->paginate(5);
        $balance_histories = Balance_history::orderBy('id','desc')->paginate(5);
        return view('developer.activity', compact('activities','balance_histories'));
    }

    public function staff() {
        $staff = Staff::paginate(5);
        return view('developer.staff.index', compact('staff'));
    }

    public function add_staff() {
        return view('developer.staff.add');
    }

    public function add_staff_post(Request $r) {
        $r->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' =>'required|email',
            'photo' => 'required',
            'level' => 'required'
        ]);
        
        if($r->hasFile('photo')){
            $datetime = date('YmdHis');
            $photoname = $datetime."-".$r->file('photo')->getClientOriginalName();
            $r->file('photo')->move(public_path('img/staff'), $photoname);
        }

        $staff = new Staff;
        $staff->name = $r->name;
        $staff->phone = $r->phone;
        $staff->level = $r->level;
        $staff->email = $r->email;
        $staff->picture = $photoname;

        if($r->has('fb_name')) {
            $staff->facebook_name = $r->fb_name;
            $staff->facebook_url = $r->fb_link;
        }

        $staff->save();
        
        Alert::success('Sukses tambah staff!','Sukses!');
        return redirect(url('developer/staff'));

    }

    public function edit_staff($id) {
        $staff = Staff::find($id);
        return view('developer.staff.edit', compact('staff'));
    }

    public function update_staff(Request $r, $id) {
        $r->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' =>'required|email',
            'level' => 'required'
        ]);
        

        $staff = Staff::find($id);
        $staff->name = $r->name;
        $staff->phone = $r->phone;
        $staff->level = $r->level;
        if($r->hasFile('photo')){
            $datetime = date('YmdHis');
            $photoname = $datetime."-".$r->file('photo')->getClientOriginalName();
            $r->file('photo')->move(public_path('img/staff'), $photoname);
            $staff->picture = $photoname;
        }
        $staff->email = $r->email;

        if($r->has('fb_name')) {
            $staff->facebook_name = $r->fb_name;
            $staff->facebook_url = $r->fb_link;
        }

        $staff->save();
        
        Alert::success('Sukses update staff!','Sukses!');
        return redirect(url('developer/staff'));
    }

    public function delete_staff(Request $r){
        $id = $r->id;

        Staff::find($id)->delete();
        Alert::success('Sukses hapus staff!','Sukses!');
        return redirect()->back();
    }
}
