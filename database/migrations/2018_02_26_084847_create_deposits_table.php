<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDepositsTable extends Migration
{
    public function up()
    {
        Schema::create('deposits', function (Blueprint $table)
        {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->index()->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');
            $table->integer('currency_id')->unsigned()->index()->nullable();
            $table->foreign('currency_id')->references('id')->on('currencies')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('payment_method_id')->unsigned()->index()->nullable();
            $table->foreign('payment_method_id')->references('id')->on('payment_methods')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('bank_id')->unsigned()->index()->nullable(); //new
            $table->foreign('bank_id')->references('id')->on('banks')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('file_id')->unsigned()->index()->nullable(); //new
            $table->foreign('file_id')->references('id')->on('files')->onUpdate('cascade')->onDelete('cascade');

            $table->string('uuid', 13)->nullable()->comment = "Unique ID (For Each Deposit)";
            $table->double('charge_percentage', 10, 2)->nullable()->default(0.00);
            $table->double('charge_fixed', 10, 2)->nullable()->default(0.00);
            $table->double('amount', 10, 2)->nullable()->default(0.00);

            $table->enum('status', ['Pending', 'Success', 'Refund', 'Blocked']);

            $table->timestamp('created_at')->nullable()->default(\DB::raw('CURRENT_TIMESTAMP'));
            // $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('deposits');
    }
}
