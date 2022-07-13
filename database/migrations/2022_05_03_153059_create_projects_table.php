<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('slug')->unique();
            $table->unsignedBigInteger('client_id');
            $table->foreign('client_id')->references('id')->on('clients')->onDelete('cascade');
            $table->unsignedBigInteger('package_id');
            $table->foreign('package_id')->references('id')->on('packages')->onDelete('cascade');
            $table->unsignedBigInteger('current_session_id');
            $table->foreign('current_session_id')->references('id')->on('current_sessions')->onDelete('cascade');
            $table->string('project_no')->unique();
            $table->string('name');
            $table->date('reg_date');
            $table->integer('students')->default(0);
            $table->integer('max_students')->default(0);
            $table->string('payment_method');
            $table->string('billing_cycle');
            $table->integer('expected');
            $table->integer('paid');
            $table->integer('balance');
            $table->date('next_due_date');
            $table->date('next_invoice_date');
            $table->date('termination_date')->nullable();
            $table->boolean('is_active')->default(1);
            $table->string('suspend_reason')->nullable();
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
        Schema::dropIfExists('projects');
    }
}
