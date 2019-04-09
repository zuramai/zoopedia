<?php 

namespace App\Helpers;
use Illuminate\Support\Facades\DB;
use App\Provider;
use App\Service;

class Order_sosmed {
	public static function irvankede($api_link,$key,$api_id, $pid, $target, $quantity, $custom_comments = false, $custom_link = false) {

		$api_postdata = [
			'api_id'=> $api_id, 
			'api_key'=>$key, 
			'service'=>$pid, 
			'target'=>$target, 
			'quantity'=>$quantity,
		];	

		if($custom_comments){
			$api_postdata['custom_comments'] = $custom_comments;
		}else if($custom_link) {
			$api_postdata['custom_link'] = $custom_link;
		}

		foreach($api_postdata as $key => $value) {
			$_postdata[] = $key.'='.urlencode($value);
		}
		// dd(join('&', $_postdata));

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_link);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, join('&', $_postdata));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $chresult = curl_exec($ch);
        curl_close($ch);
        $json_result = json_decode($chresult,true);
        // dd($json_result);

        if(isset($json_result['error'])) {
            return ['status' => false, 'message' => $json_result['error']];
        }else if($json_result['status'] == true) {
            return ['status' => $json_result['status'], 'order_id' => $json_result['data']['id']];
        }else if($json_result['status'] == false) {
        	return ['status' => $json_result['status'], 'message' => $json_result['data']];
        }
        }

    public static function jap($api_key,  $pid, $post_link, $post_quantity, $custom_comments = false, $custom_link = false) {
	    $api_postdata = "key=$api_key&action=add&service=$pid&link=$post_link&quantity=$post_quantity";
		$ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://justanotherpanel.com/api/v2");
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $api_postdata);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $chresult = curl_exec($ch);
        // echo $chresult;
        curl_close($ch);
        $json_result = json_decode($chresult);
		$poid = $json_result->order;

		if($json_result['status'] == true) {
        	return ['status' => $json_result['status'], 'order_id' => $poid];
        }else if($json_result['status'] == false) {
        	return ['status' => $json_result['status'], 'message' => $json_result['message']];
        }
	}


    public function bospanel($api_token, $package, $link, $quantity, $custom_data = '') {
        
    }

}

 ?>