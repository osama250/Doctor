<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

    public function up()
    {
        Schema::create('partners', function (Blueprint $table) {
            $table->increments('id');
            $table->string('photo');
            $table->string('url');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::drop('partners');
    }
};
