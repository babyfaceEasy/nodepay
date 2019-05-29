<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAppTransactionsInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('app_transactions_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('app_id')->unsigned()->index();
            $table->foreign('app_id')->references('id')->on('merchant_apps')->onUpdate('cascade')->onDelete('cascade');
            $table->string('payment_method',20);
            $table->double('amount');
            $table->string('currency',10);
            $table->string('return_url',191);
            $table->string('cancel_url',191);
            $table->string('grant_id',100);
            $table->string('token',191);
            $table->string('expires_in',100);
            $table->enum('status',["pending","success", "cancel"]);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('app_transactions_infos');
    }
}
