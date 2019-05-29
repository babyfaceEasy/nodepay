<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionsTable extends Migration
{
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table)
        {
            $table->increments('id');

            $table->integer('user_id')->unsigned()->index()->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('end_user_id')->unsigned()->index()->nullable();
            $table->foreign('end_user_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('currency_id')->unsigned()->index()->nullable();
            $table->foreign('currency_id')->references('id')->on('currencies')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('payment_method_id')->unsigned()->index()->nullable();
            $table->foreign('payment_method_id')->references('id')->on('payment_methods')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('merchant_id')->unsigned()->index()->nullable();
            $table->foreign('merchant_id')->references('id')->on('merchants')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('bank_id')->unsigned()->index()->nullable(); //new
            $table->foreign('bank_id')->references('id')->on('banks')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('file_id')->unsigned()->index()->nullable(); //new
            $table->foreign('file_id')->references('id')->on('files')->onUpdate('cascade')->onDelete('cascade');

            $table->string('uuid', 13)->nullable()->comment = "Unique ID";

            $table->string('refund_reference', 13)->nullable()->comment = "Refund Reference";

            $table->integer('transaction_reference_id')->default(0);

            $table->integer('transaction_type_id')->unsigned()->nullable();
            $table->foreign('transaction_type_id')->references('id')->on('transaction_types')->onUpdate('cascade')->onDelete('cascade');

            $table->enum('user_type', ['registered', 'unregistered'])->default('registered');

            $table->string('email')->index()->nullable();

            $table->integer('phone')->index()->nullable();

            $table->double('subtotal', 10, 2)->nullable()->default(0.00);

            $table->double('percentage', 10, 2)->nullable()->default(0.00);

            $table->double('charge_percentage', 10, 2)->nullable()->default(0.00);

            $table->double('charge_fixed', 10, 2)->nullable()->default(0.00);

            $table->double('total', 10, 2)->nullable()->default(0.00);

            $table->text('note')->nullable();

            $table->enum('status', ['Pending', 'Success', 'Refund', 'Blocked']);

            $table->timestamps();
            // $table->timestamp('created_at')->default(\DB::raw('CURRENT_TIMESTAMP'));
            // $table->timestamp('updated_at')->default(\DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));

        });

    }

    public function down()
    {
        Schema::dropIfExists('transactions');
    }
}
