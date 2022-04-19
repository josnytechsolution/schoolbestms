<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('slug')->unique();
            $table->string('customer_no')->unique();
            $table->string('first_name');
            $table->string('last_name');
            $table->string('email')->unique();
            $table->string('contact')->unique();
            $table->boolean('on_email')->default(0);
            $table->boolean('on_phone')->default(0);
            $table->date('reg_date');
            $table->string('company_name')->nullable();
            $table->string('postal_address')->nullable();
            $table->string('county')->nullable();
            $table->string('country')->default('KE');
            $table->unsignedBigInteger('current_session_id');
            $table->foreign('current_session_id')->references('id')->on('current_sessions');
            $table->string('status')->default('isActive');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users');
            $table->string('logo');
            $table->bigInteger('created_by');
            $table->timestamp('created_at')->useCurrent();
            $table->bigInteger('updated_by')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clients');
    }
}
