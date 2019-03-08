<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/hall_of_fame', 'HomeController@hof')->name('hof');
Route::get('/settings', 'HomeController@settings')->name('settings');
Route::get('/get_zp','OrderController@get_zp');

# STAFF
Route::prefix('staff')->group(function() {
	Route::get('/',"StaffController@index");
	Route::get('/add_user',"StaffController@add_user");
});

Route::prefix('order')->group(function() {
	Route::prefix('sosmed')->group(function(){
		Route::get('/',"OrderController@sosmed")->name('order_sosmed');
		Route::post('/',"OrderController@sosmed_post")->name('order_sosmed_post');
		Route::get("/history", "OrderController@sosmed_history")->name('sosmed_history');	
		Route::get("/statistic", "OrderController@sosmed_statistic")->name('sosmed_statistic');	
	
		Route::prefix('/ajax')->group(function(){
			Route::post('/get_service', 'OrderController@get_service');
			Route::post('/get_service_data', 'OrderController@get_service_data');
			Route::post('/get_price', 'OrderController@get_price');
		});
	});

	Route::prefix('pulsa')->group(function() {
		Route::get('/order','OrderController@pulsa')->name('order_pulsa');
		Route::post('/order','OrderController@pulsa_order')->name('post_pulsa');
		Route::get('/history','OrderController@pulsa_history')->name('order_pulsa_history');
		Route::get('/statistic','OrderController@pulsa_statistic')->name('pulsa_statistic');

		Route::prefix('/ajax')->group(function(){
			Route::post('/get_service_pulsa','OrderController@get_service_pulsa');
			Route::post('/get_service_data_pulsa','OrderController@get_service_data_pulsa');
		});
	});

	Route::prefix('whatsapp')->group(function() {
		Route::get('/','WhatsappController@index');
		Route::get('/sender','WhatsappController@sender');
		Route::get('/send','WhatsappController@send');
		Route::post('/send', 'WhatsappController@send_post');
		Route::get('/history','WhatsappController@history');
	});
});

Route::prefix('developer')->group(function() {
	Route::get('/','AdminController@index');
	Route::get('/report', 'AdminController@report');
	Route::prefix('/services')->group(function(){
		Route::get('/', 'AdminController@services')->name('dev_services');
		Route::delete('/', 'AdminController@delete_services');
		Route::get('/delete', 'AdminController@detail_service');
		Route::get('/detail/{id}', 'AdminController@detail_services')->name('dev_services_detail');
		Route::get('/add', 'AdminController@add_services')->name('dev_services_add');
		Route::post('/add', 'AdminController@post_add_services')->name('dev_services_add_post');
		Route::get('/edit/{id}', 'AdminController@edit_services')->name('dev_services_edit');
		Route::post('/edit/{id}', 'AdminController@update_services')->name('dev_services_update');
	});
	Route::prefix('/services_pulsa')->group(function(){
		Route::get('/', 'AdminController@services_pulsa')->name('dev_services_pulsa');
		Route::delete('/', 'AdminController@delete_services_pulsa');
		Route::get('/delete', 'AdminController@detail_service_pulsa');
		Route::get('/detail/{id}', 'AdminController@detail_services_pulsa')->name('dev_services_detail');
		Route::get('/add', 'AdminController@add_services_pulsa')->name('dev_services_add');
		Route::post('/add', 'AdminController@post_add_services_pulsa')->name('dev_services_add_post');
		Route::get('/edit/{id}', 'AdminController@edit_services_pulsa')->name('dev_services_edit');
		Route::post('/edit/{id}', 'AdminController@update_services')->name('dev_services_update');
	});
	Route::prefix('/services_cat')->group(function(){
		Route::get('/', 'AdminController@service_cat')->name('services_cat');
		Route::get('/add', 'AdminController@add_service_cat')->name('dev_services_add');
		Route::post('/add', 'AdminController@post_add_service_cat')->name('dev_services_add_post');
		Route::delete('/', 'AdminController@delete_service_cat')->name('dev_services_delete');
		Route::get('/edit/{id}', 'AdminController@edit_service_cat')->name('dev_services_edit');
		Route::post('/edit/{id}', 'AdminController@update_service_cat')->name('dev_services_update');
	});

	Route::prefix('/orders')->group(function(){
		# MANAGE ORDERS SOSMED #
		Route::prefix('/sosmed')->group(function(){
			Route::get('/','AdminController@manage_orders_sosmed');
			Route::get('/edit/{id}','AdminController@edit_orders_sosmed');
			Route::post('/edit/{id}','AdminController@update_orders_sosmed');
		});

		# MANAGE ORDERS PULSA #
		Route::prefix('/pulsa')->group(function(){
			Route::get('/', 'AdminController@manage_orders_pulsa');
			Route::get('/edit/{id}', 'AdminController@edit_orders_pulsa');
			Route::post('/edit/{id}', 'AdminController@update_orders_pulsa');
		});	
	});
	Route::prefix('/users')->group(function(){
		Route::get('/','AdminController@manage_users');
		Route::delete('/','AdminController@delete_users');
		Route::get('/add','AdminController@add_users');
		Route::post('/add','AdminController@add_users_post');
		Route::get('/edit/{id}','AdminController@edit_users');
		Route::post('/edit/{id}','AdminController@update_users');
		Route::get('/detail/{id}', 'AdminController@users_detail');
	});

	Route::prefix('/deposit')->group(function(){
		Route::get('/','AdminController@manage_deposit');	
		Route::post('/accept','AdminController@accept_deposit');	
		Route::post('/decline','AdminController@decline_deposit');

		Route::prefix('/method')->group(function(){
			Route::get('/','AdminController@deposit_method');
			Route::get('/add','AdminController@add_deposit_method');
			Route::post('/add', 'AdminController@post_deposit_method');
			Route::get('/edit/{id}', 'AdminController@edit_deposit_method');
			Route::post('/edit/{id}', 'AdminController@update_deposit_method');
		});
	});
	Route::prefix('providers')->group(function(){
		Route::get('/','ProviderController@index');
		Route::get('/add','ProviderController@add');
		Route::post('/add','ProviderController@add_post');
		Route::get('/edit/{id}','ProviderController@edit');
		Route::post('/edit/{id}','ProviderController@update');
		Route::delete('/','ProviderController@delete');
	});
	Route::prefix('/news')->group(function(){
		Route::get('/','AdminController@manage_news');
		Route::get('/add','AdminController@add_news');
		Route::get('/edit/{id}','AdminController@edit_news');
		Route::post('/edit/{id}','AdminController@update_news');
	});


	Route::prefix('/tickets')->group(function(){
		Route::get('/','AdminController@manage_tickets');
		Route::get('/{id}','AdminController@ticket');
		Route::post('/{id}','AdminController@ticket_chat');
	});

	Route::prefix('/history')->group(function(){
		Route::get('/transfer','AdminController@history_all_transfer');
		Route::get('/transaction','AdminController@history_all_transaction');
	});
});

Route::prefix('/deposit')->group(function() {
	Route::get('/','DepositController@index');
	Route::get('/new','DepositController@deposit');
	Route::post('/new','DepositController@deposit_add');
	Route::get('/history','DepositController@history');
});

Route::prefix('/ticket')->group(function() {
	Route::get('/','TicketController@index');
	Route::get('/add','TicketController@add_view');
	Route::post('/add','TicketController@add');
});

Route::prefix('/price')->group(function(){
	Route::get('/sosmed', 'PriceController@sosmed');
	Route::get('/pulsa', 'PriceController@pulsa');
});

Route::prefix('api')->group(function(){
	Route::post('/sosmed', 'APIController@sosmed')->name('api_sosmed');
	Route::get('/sosmed/doc', 'APIController@sosmed_doc');
	Route::post('/pulsa', 'APIController@pulsa')->name('api_pulsa');
	Route::get('/pulsa/doc', 'APIController@pulsa_doc');
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
