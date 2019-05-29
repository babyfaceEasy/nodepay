<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransfersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transfers', function (Blueprint $table)
        {
            $table->increments('id');

            $table->integer('sender_id')->unsigned()->index()->nullable();
            $table->foreign('sender_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('receiver_id')->unsigned()->index()->nullable();
            $table->foreign('receiver_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('currency_id')->unsigned()->index()->nullable();
            $table->foreign('currency_id')->references('id')->on('currencies')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('bank_id')->unsigned()->index()->nullable(); //new
            $table->foreign('bank_id')->references('id')->on('banks')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('file_id')->unsigned()->index()->nullable(); //new
            $table->foreign('file_id')->references('id')->on('files')->onUpdate('cascade')->onDelete('cascade');

            $table->string('uuid', 13)->nullable()->comment = "Unique ID (For Each Transfer)";
            $table->double('fee', 10, 2)->nullable()->default(0.00);
            $table->double('amount', 10, 2)->nullable()->default(0.00);

            $table->text('note')->nullable();

            $table->string('email', 60)->nullable();
            $table->string('phone', 15)->nullable();

            $table->enum('status', ['Pending', 'Success','Refund','Blocked']);

            $table->timestamp('created_at')->default(\DB::raw('CURRENT_TIMESTAMP'));
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::dropIfExists('transfers');
    }
}
