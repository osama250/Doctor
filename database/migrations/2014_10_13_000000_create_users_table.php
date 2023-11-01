<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->increments('country_id')->unsigned();
            $table->rememberToken();
            $table->timestamps();

            // $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
        });
    }


    public function down()
    {
        Schema::dropIfExists('users');
    }
};
