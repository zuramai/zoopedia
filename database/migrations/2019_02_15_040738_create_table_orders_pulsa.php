<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableOrdersPulsa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders_pulsa', function (Blueprint $table) {
            $table->increments('id');
            $table->string('oid')->nullable();
            $table->string('poid')->nullable();
            $table->unsignedInteger('user_id');
            $table->unsignedInteger('service_id');
            $table->integer('price');
            $table->string('data');
            $table->string('sn');
            $table->enum('status',['Success','Error','Pending']);
            $table->enum('place_from',['WEB','API']);
            $table->integer('refund')->default(0);
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('service_id')->references('id')->on('services_pulsas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders_pulsa');
    }
}
