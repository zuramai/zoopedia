<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use Alert;
use App\Order;
use App\News;
use App\Voucher;
use App\Staff;
use App\Activity;
use App\Balance_history;
use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
            $all = Order::where('user_id',Auth::user()->id)->whereIn('status',['Success','Processing','Pending'])->sum('price');
            $total_order = Order::all()->where('user_id',Auth::user()->id)->count();
            $pending = Order::where('user_id',Auth::user()->id)->where('status','Pending')->count();
            $processing = Order::where('user_id',Auth::user()->id)->whereIn('status',['Processing'])->count();
            $success = Order::where('user_id',Auth::user()->id)->where('status','Success')->count();
            $user = User::where('id',Auth::user()->id)->first();
            $top3 = DB::select("select  user_id, users.name, users.photo, SUM(price) AS total_order FROM orders JOIN users ON users.id = user_id GROUP BY orders.user_id ORDER BY total_order   DESC");
            // dd($top3);

            $order_sosmed = DB::select("SELECT MONTH(created_at) as month, count(*) as total FROM orders GROUP BY MONTH(created_at) ");
            $order_pulsa = DB::select("SELECT MONTH(created_at) as month, count(*) as total FROM orders_pulsas GROUP BY MONTH(created_at) ");

            
            return view('dashboard', compact('total_order','pending','processing','success','user','all', 'order_sosmed','order_pulsa'));
    }

    

    public function hof() {
        $top_sosmed = DB::select("SELECT users.id as user_id, users.name, SUM(price) AS price, COUNT(orders.id) AS jumlah, orders.created_at from orders  join users on orders.user_id = users.id WHERE orders.created_at LIKE '%".date('Y-m')."%' group by user_id order by price desc LIMIT 10");

        $top_pulsa = DB::select("SELECT orders_pulsas.user_id, users.name, SUM(orders_pulsas.price) AS price,COUNT(orders_pulsas.id) AS jumlah, orders_pulsas.created_at FROM orders_pulsas JOIN users ON users.id = orders_pulsas.user_id WHERE orders_pulsas.created_at LIKE '%".date('Y-m')."%' AND orders_pulsas.status='Success' GROUP BY user_id ORDER BY price DESC LIMIT 10");

        $top_layanan = DB::select('SELECT COUNT(*) as jumlah_order, services.name FROM orders JOIN services ON services.id = orders.service_id  GROUP BY orders.service_id ORDER BY jumlah_order DESC LIMIT 10');
        
        $top_deposit = DB::select('SELECT COUNT(*) as count_deposit, SUM(deposits.quantity) as total_deposit, users.name FROM deposits JOIN users ON deposits.user_id = users.id WHERE deposits.status = "Success" ORDER BY total_deposit  LIMIT 10');
        
        return view('others.hall_of_fame', compact('top_sosmed', 'top_pulsa', 'top_layanan','top_deposit'));
    }

    public function activity() {
        $activities = Activity::where('user_id',auth()->user()->id)->orderBy('id','desc')->paginate(10);
        return view('others.activity', compact('activities'));
    }

    public function balance_usage() {
        $balance_histories = Balance_history::where('user_id',auth()->user()->id)->orderBy('id','desc')->paginate(10);
        return view('others.balance_usage', compact('balance_histories'));
    }

    public function contact() {
        $staff = Staff::orderBy('id','asc')->get();
        return view('others.contact', compact('staff'));
    }

    public function news() {
        $news = News::orderBy('id','desc')->paginate(10);
        return view('others.news',compact('news'));
    }

    public function voucher() {
        return view('others.voucher');
    }

    public function voucher_post(Request $r) {
        $r->validate([
            'code' => 'required',
        ]);

        $code = $r->code;

        $checkCode = Voucher::where('code',$code)->first();
        if(!$checkCode || $checkCode->status == 'Used') {
            Alert::error('Error');
            session()->flash('danger','Kode voucher tidak ada atau telah digunakan');
            return redirect()->back();
        }

        $checkCode->status = 'Used';
        $checkCode->save();

        $user = User::find(Auth::user()->id);
        $user->balance += $checkCode->quantity;
        $user->save();

        $balance_history = new Balance_history;
        $balance_history->user_id = Auth::user()->id;
        $balance_history->action = "Add Balance";
        $balance_history->desc = "Claim kode voucher senilai Rp ".number_format($r->quantity);
        $balance_history->save();

        $activity = new Activity;
        $activity->user_id = Auth::user()->id;
        $activity->type = "Claim Voucher";
        $activity->description = "Claim kode voucher senilai Rp ".number_format($r->quantity);
        $activity->user_agent = $r->header('User-Agent');
        $activity->ip = $r->ip();
        $activity->save();

        Alert::success('Sukses input voucher!','Sukses!');
        session()->flash('success','Sukses claim voucher! <br> Jumlah saldo ditambahkan: Rp '.number_format($checkCode->quantity)." <br> Jumlah saldo sekarang: ".number_format($user->balance));
        return redirect()->back();

    }

}
