<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFeesLimitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fees_limits', function (Blueprint $table)
        {
            $table->increments('id');

            $table->integer('currency_id')->unsigned()->index()->nullable();
            $table->foreign('currency_id')->references('id')->on('currencies')->onUpdate('cascade')->onDelete('cascade');

            $table->integer('transaction_type_id')->unsigned()->nullable();
            $table->foreign('transaction_type_id')->references('id')->on('transaction_types')->onUpdate('cascade')->onDelete('cascade');

            $table->double('charge_percentage', 10, 2)->default(0.00);

            $table->double('charge_fixed', 10, 2)->default(0.00);

            $table->double('min_limit', 10, 2)->default(1);

            $table->double('max_limit', 10, 2)->nullable();

            $table->string('processing_time', 4)->nullable()->default('0')->comment('time in days'); //new -- added default to 0 for bank transfer fees limit

            $table->enum('has_transaction', ['Yes', 'No']);

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
        Schema::dropIfExists('fees_limits');
    }
}
