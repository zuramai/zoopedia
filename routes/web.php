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
Auth::routes();

Route::get('/','HomeController@index');
Route::group(['middleware'=>['auth']], function() {
	Route::get('/home', 'HomeController@index')->name('home');
	Route::get('/settings', 'HomeController@settings')->name('settings');

	Route::prefix('getservice')->group(function() {
		Route::get('/bospanel', 'GetserviceController@bospanel');
		Route::get('/irvankede', 'GetserviceController@irvankede');
		Route::get('/jap', 'GetserviceController@jap');
		Route::get('/get_portal', 'GetserviceController@portalpulsa');
		Route::get('/get_portal_pln', 'GetserviceController@portalpulsa_pln');
		Route::get('/get_portal/category', 'GetserviceController@portalpulsa_cat');
	});

	Route::get('/hall_of_fame', 'HomeController@hof')->name('hof');
	Route::get('/contact', 'HomeController@contact');
	Route::get('/activity', 'HomeController@activity');
	Route::get('/balance_usage', 'HomeController@balance_usage');
	Route::get('/news', 'HomeController@news');
	Route::get('/contact', 'HomeController@contact');
	Route::get('/voucher', 'HomeController@voucher');
	Route::post('/voucher', 'HomeController@voucher_post');
	Route::post('logout', 'Auth\LoginController@logout');


	Route::prefix('order')->group(function() {
		Route::prefix('sosmed')->group(function(){
			Route::get('/terms_of_service', 'OrderController@tos');
			Route::get('/',"OrderController@sosmed")->name('order_sosmed');
			Route::post('/',"OrderController@sosmed_post")->name('order_sosmed_post');
			Route::get("/history", "OrderController@sosmed_history")->name('sosmed_history');	
			Route::get("/statistic", "OrderController@sosmed_statistic")->name('sosmed_statistic');	
		
			Route::prefix('/ajax')->group(function(){
				Route::post('/get_service', 'OrderController@get_service');
				Route::post('/get_service_data', 'OrderController@get_service_data');
				Route::post('/get_price', 'OrderController@get_price');
				Route::post('/check_sosmed', 'OrderController@check_sosmed');
			});
		});

		Route::prefix('pulsa')->group(function() {
			Route::get('/order','OrderController@pulsa')->name('order_pulsa');
			Route::post('/order','OrderController@pulsa_order')->name('post_pulsa');
			Route::get('/history','OrderController@pulsa_history')->name('order_pulsa_history');
			Route::get('/statistic','OrderController@pulsa_statistic')->name('pulsa_statistic');

			Route::prefix('/ajax')->group(function(){
				Route::post('/get_service_pulsa','OrderController@get_service_pulsa');
				Route::post('/get_type_pulsa','OrderController@get_type_pulsa');
				Route::post('/get_price_pulsa','OrderController@get_price_pulsa');
			});
		});
	});

	Route::prefix('/deposit')->group(function() {
		Route::get('/','DepositController@index');
		Route::get('/new','DepositController@deposit');
		Route::post('/new','DepositController@deposit_add');
		Route::get('/history','DepositController@history');
		Route::delete('/history', 'DepositController@cancel_deposit');

		Route::post('get_method','DepositController@get_method');
		Route::post('get_rate','DepositController@get_rate');
	});

	Route::prefix('/ticket')->group(function() {
		Route::get('/','TicketController@index');
		Route::get('/add','TicketController@add_view');
		Route::post('/add','TicketController@add');
		Route::get('/{id}','TicketController@detail');
		Route::post('/{id}','TicketController@detail_add');
	});


	Route::prefix('users')->group(function() {
		Route::get('/','UsersController@index');
		Route::get('/settings','UsersController@setting');
		Route::post('/settings','UsersController@update');
	});

});

# STAFF
Route::group(['prefix'=>'staff', 'middleware'=>['auth','ExceptMember']], function() {
	Route::get('/voucher',"StaffController@voucher");
	Route::post('/voucher',"StaffController@voucher_post");
	Route::delete('/voucher',"StaffController@voucher_delete");
	Route::get('/add_user',"StaffController@add_user");
	Route::post('/add_user',"StaffController@add_user_post");
});


Route::group(['prefix'=>'developer', 'middleware'=>['Developer'] ],function() {
	Route::get('/','AdminController@index');
	Route::get('/report', 'AdminController@report');
	Route::get('/activity', 'AdminController@activity');
	Route::prefix('/invitation_code')->group(function() {
		Route::get('/','AdminController@invitation_code');
		Route::post('/', 'AdminController@invitation_code_add');
		Route::post('/random', 'AdminController@invitation_code_add_random');
		Route::delete('/','AdminController@invitation_code_delete');
	});
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
		Route::get('/add', 'AdminController@services_pulsa_add')->name('dev_services_add');
		Route::post('/add', 'AdminController@post_add_services_pulsa')->name('dev_services_add_post');
		Route::get('/edit/{id}', 'AdminController@edit_services_pulsa')->name('dev_services_edit');
		Route::post('/edit/{id}', 'AdminController@update_services_pulsa')->name('dev_services_update');
	});
	Route::prefix('/services_cat')->group(function(){
		Route::get('/', 'AdminController@service_cat')->name('services_cat');
		Route::get('/add', 'AdminController@add_service_cat')->name('dev_services_add');
		Route::post('/add', 'AdminController@post_add_service_cat')->name('dev_services_add_post');
		Route::delete('/', 'AdminController@delete_service_cat')->name('dev_services_delete');
		Route::get('/edit/{id}', 'AdminController@edit_service_cat')->name('dev_services_edit');
		Route::post('/edit/{id}', 'AdminController@update_service_cat')->name('dev_services_update');

		Route::prefix('pulsa')->group(function() {
				Route::get('/', 'AdminController@service_cat_pulsa')->name('services_cat_pulsa');
				Route::get('/add','AdminController@add_services_cat_pulsa')->name('services_cat_pulsa_add');
				Route::post('/add','AdminController@services_cat_pulsa_add_post')->name('services_cat_pulsa_add_post');
				Route::get('/edit/{id}', 'AdminController@service_cat_pulsa_edit')->name('services_cat_pulsa_edit');
				Route::put('/edit/{id}', 'AdminController@service_cat_pulsa_update')->name('services_cat_pulsa_update');
				Route::delete('/','AdminController@service_cat_pulsa_delete');
				Route::delete('/oprator','AdminController@service_cat_oprator_delete');



				Route::get('add_operator', 'AdminController@operator_add');
				Route::post('add_operator', 'AdminController@operator_add_post');
				Route::get('edit_operator/{id}','AdminController@operator_edit');
				Route::put('edit_operator/{id}','AdminController@operator_update');
				Route::delete('/operator_delete','AdminController@operator_delete');
		});
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
			Route::put('/edit/{id}', 'AdminController@update_deposit_method');
			Route::delete('/','AdminController@delete_deposit_method');
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
		Route::post('/add','AdminController@add_news_post');
		Route::get('/edit/{id}','AdminController@edit_news');
		Route::post('/edit/{id}','AdminController@update_news');
		Route::delete('/','AdminController@delete_news');
	});


	Route::prefix('/ticket')->group(function() {
		Route::get('/','AdminController@ticket_index');
		Route::get('/add','AdminController@ticket_add_view');
		Route::post('/add','AdminController@ticket_add');
		Route::get('/{id}','AdminController@ticket_detail');
		Route::post('/{id}','AdminController@ticket_detail_add');
	});

	Route::prefix('staff')->group(function() {
		Route::get('/', 'AdminController@staff');
		Route::get('/add', 'AdminController@add_staff');
		Route::post('/add', 'AdminController@add_staff_post');
		Route::get('/edit/{id}', 'AdminController@edit_staff');
		Route::put('/edit/{id}', 'AdminController@update_staff');
		Route::delete('/','AdminController@delete_staff');
	});
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
