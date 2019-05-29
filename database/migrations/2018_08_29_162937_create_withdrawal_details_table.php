<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWithdrawalDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('withdrawal_details', function (Blueprint $table)
        {
            $table->increments('id');
            $table->integer('withdrawal_id')->unsigned()->index()->nullable();
            $table->foreign('withdrawal_id')->references('id')->on('withdrawals')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('type')->comment = "1=Bank, 2=Paypal";
            $table->string('email', 25)->nullable();
            $table->string('account_name', 50)->nullable();
            $table->string('account_number', 25)->nullable();
            $table->string('bank_branch_name', 25)->nullable();
            $table->string('bank_branch_city', 25)->nullable();
            $table->string('bank_branch_address', 100)->nullable();
            $table->integer('country')->unsigned()->nullable();
            $table->string('swift_code', 11)->nullable();
            $table->string('bank_name', 25)->nullable();
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
        Schema::dropIfExists('withdrawal_details');
    }
}
