<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;

class PriceController extends Controller
{

    public function sosmed(Request $r) {
    	$search = $r->get('search');
    	$service = Service::orderBy('price','asc')->where('name','LIKE',"%$search%")->paginate(15);
    	$service->appends($r->only('search'));
    	return view('price.sosmed', compact('service'));
    }

    public function pulsa() {

    }
}
