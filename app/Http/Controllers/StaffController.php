<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Balance_history;
use App\Voucher;
use App\Activity;
use Hash;
use Illuminate\Support\Str;
use Alert;
use Auth;

class StaffController extends Controller
{
	public function __construct() {

	}

    public function voucher() {
        $vouchers = Voucher::where('user_id',Auth::user()->id)->orderBy('id','desc')->paginate(10);
    	return view('staff.voucher', compact('vouchers'));
    }

    public function voucher_post(Request $r) {
        $min_quantity = env('MIN_VOUCHER');

        $r->validate([
            'quantity' => 'required|integer|min:'.$min_quantity,
        ]);

        $checkBalance = User::find(Auth::user()->id);
        $balance = $checkBalance->balance;

        if($r->quantity > $balance) {
            return redirect()->back()->withErrors(['Saldo tidak cukup']);
        }



        if(empty($r->code)) {
            $code = Str::random(10);
        }else{
            $code = $r->code;
        }

        $user = User::find(Auth::user()->id);
        $user->balance -= $r->quantity;
        $user->save();
        
        $voucher = new Voucher;
        $voucher->code = $code;
        $voucher->status = 'Available';
        $voucher->quantity = $r->quantity;
        $voucher->user_id = Auth::user()->id;
        $voucher->save();

        $checkBalance->balance -= $r->quantity;
        $checkBalance->save();

        $balance_history = new Balance_history;
        $balance_history->user_id = Auth::user()->id;
        $balance_history->action = "Cut Balance";
        $balance_history->desc = "Pembuatan kode voucher bernilai Rp ".number_format($r->quantity);
        $balance_history->save();

        $activity = new Activity;
        $activity->user_id = Auth::user()->id;
        $activity->type = "Add Voucher";
        $activity->description = "Pembuatan kode voucher bernilai Rp ".number_format($r->quantity);
        $activity->user_agent = $r->header('User-Agent');
        $activity->ip = $r->ip();
        $activity->save();

        Alert::success('Sukses buat kode voucher','Sukses!');
        session()->flash('success','Sukses buat kode voucher! <br> <b> Kode:</b> '.$code.' <br> <b> Nominal: </b> Rp '.number_format($r->quantity));
        return redirect()->back();
    }

    public function voucher_delete(Request $r){
        $id = $r->id;
        Voucher::find($id)->delete();

        Alert::success('Sukses hapus voucher','Sukses!');
        return redirect()->back();
    }

    public function transfer_balance_post(Request $r) {
    	
    }

    public function add_user() {
    	return view('staff.add_user');
    }

    public function add_user_post(Request $r) {
    	$get_balance = 0;
    	$r->validate([
    		'level' => 'required|in:Member,Reseller,Agen,Admin',
    		'name' => 'required|string',
    		'email' => 'required|email|unique:users,email',
    		'password' => 'required|min:6'
    	]);

    	if($r->level == 'Admin') {
    		$get_balance = env('ADMIN_BALANCE');
    		$cut_balance = env("ADD_ADMIN_PRICE");
    	}
    	else if($r->level == 'Reseller') {
    		$get_balance = env('RESELLER_BALANCE');
    		$cut_balance = env("ADD_RESELLER_PRICE");
    	}
    	else if($r->level == 'Agen') {	
    		$get_balance = env('AGEN_BALANCE');
    		$cut_balance = env("ADD_AGEN_PRICE");
    	}
    	else if($r->level == 'Member') {
    		$get_balance = env('MEMBER_BALANCE');
    		$cut_balance = env("ADD_MEMBER_PRICE");
    	}

    	$user = new User;
    	$user->name = $r->name;
    	$user->email = $r->email;
    	$user->password = Hash::make($r->password);
		$user->level = $r->level;
    	$user->balance = $get_balance;
   		$user->status = 'Active';
   		$user->api_key = Hash::make(Str::random(5));
   		$user->uplink = Auth::user()->email;
    	$user->save();

    	$balance_history = new Balance_history;
        $balance_history->user_id = Auth::user()->id;
        $balance_history->action = "Cut Balance";
        $balance_history->desc = "Pendaftaran ".$r->level." dengan email ".$r->email." seharga Rp ".number_format($cut_balance);
        $balance_history->save();

        $activity = new Activity;
        $activity->user_id = Auth::user()->id;
        $activity->type = "Add User";
        $activity->description = "Pendaftaran ".$r->level." dengan email ".$r->email." seharga Rp ".number_format($cut_balance);
        $activity->user_agent = $r->header('User-Agent');
        $activity->ip = $r->ip();
        $activity->save();

    	Alert::success('Sukses menambah pengguna!','Sukses!');
    	session()->flash('success','Sukses tambah pengguna! <br> Level: '.$r->level.' <br> Email: '.$r->email.'<br> Password: '.$r->password.'<br> Saldo: '.number_format($get_balance));
    	return redirect()->back();
    }
}
