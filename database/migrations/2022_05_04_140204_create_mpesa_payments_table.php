<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMpesaPaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mpesa_payments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('project_id')->nullable();
            $table->foreign('project_id')->references('id')->on('projects')->onDelete('cascade');
            $table->unsignedBigInteger('current_session_id');
            $table->foreign('current_session_id')->references('id')->on('current_sessions')->onDelete('cascade');
            $table->text('transTime')->nullable();
            $table->text('transAmount')->nullable();
            $table->text('businessShortCode')->nullable();
            $table->text('billRefNumber')->nullable();
            $table->text('invoiceNumber')->nullable();
            $table->text('orgAccountBalance')->nullable();
            $table->text('thirdPartyTransID')->nullable();
            $table->text('MSISDN')->nullable();
            $table->text('firstName')->nullable();
            $table->text('lastName')->nullable();
            $table->text('middleName')->nullable();
            $table->text('transID')->nullable();
            $table->text('transactionType')->nullable();
            $table->boolean('is_used')->default(0);
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
        Schema::dropIfExists('mpesa_payments');
    }
}
