<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePayoutSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payout_settings', function (Blueprint $table)
        {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->integer('type');
            $table->string('email', 25)->nullable();
            $table->string('account_name', 50)->nullable();
            $table->string('account_number', 25)->nullable();
            $table->string('bank_branch_name', 25)->nullable();
            $table->string('bank_branch_city', 25)->nullable();
            $table->string('bank_branch_address', 100)->nullable();
            $table->integer('country')->unsigned()->nullable();
            $table->string('swift_code', 11)->nullable();
            $table->string('bank_name', 25)->nullable();
            $table->tinyInteger('default_payout')->comment('0=not default, 1=default')->default('0');
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
        Schema::dropIfExists('payout_settings');
    }
}
