<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->bigInteger('poid');
            $table->unsignedInteger('user_id');
            $table->unsignedInteger('service_id');
            $table->string('target');
            $table->string('quantity');
            $table->integer('start_count');
            $table->string('remains');
            $table->integer('price');
            $table->enum('status', ['Success','Pending','Processing','Error','Partial']);
            $table->enum('place_from',['WEB','API']);
            $table->text('notes');
            $table->integer('refund')->default(0);
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('service_id')->references('id')->on('services');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
