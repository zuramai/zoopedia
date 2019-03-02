<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Deposit;

class DepositController extends Controller
{
    public function __construct(){
    	$this->middleware('auth');
    }

    public function index(){}
    public function deposit(){
        return view('deposit.new');
    }
    public function deposit_add(Request $r){
        $type = $r->type;
        $method = $r->method;
        $sender = $r->sender;
        $quantity = $r->quantity;

        $check = Deposit_method::where('type', $type)->where('name',$method)->first();

        $rate = $check->rate;
         


    }
    public function history(){
    	$deposit = Deposit::where('user_id', auth()->user()->id)->get();
        
    	return view('deposit.history', compact('deposit'));
    } 
}
