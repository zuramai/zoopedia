<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    public function category(){
    	return $this->belongsTo('App\Service_cat', 'category_id');
    }
    public function provider(){
    	return $this->belongsTo('App\Provider', 'provider_id');
    }
}
