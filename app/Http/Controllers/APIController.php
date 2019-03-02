<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
use App\Order;
use Auth;
use App\User;


class APIController extends Controller
{
    public function sosmed(Request $r) {
    	$key = $r->key;
    	$action = $r->action;

        $check_key = User::where('api_key',$key)->first();

        if(empty($check_key)) {
            return response()->json(['error'=>'Your API Key is not valid']);
        }

    	$services = Service::all(['id','name','category_id','min','max','price','status','note']);
    	$array = [];

    	foreach($services as $service){
    		$array['status'] = 'Success';
    		$array['data'][] = array('id'=>$service->id,
    								 'category'=>$service->category->name,
    								 'name'=>$service->name,
    								'min'=>$service->min,
    								'max'=>$service->max,
    								'price'=>$service->price_oper,
    								'status'=>$service->status,
    								'note'=>$service->note);
    	}
    	return response()->json($array);
    }

    public function pulsa() {

    }

    public function sosmed_doc() {
        if(Auth::check()) {
            $user = User::where('id',Auth::user()->id)->first();
           return view('api.sosmed_doc', compact('user'));
        }else{
    	   return view('api.sosmed_doc'); 
        }
    }

    public function pulsa_doc() {
    	return view('api.pulsa_doc');
    }
}
