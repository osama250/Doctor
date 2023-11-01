<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

    public function up()
    {
        Schema::create('about_us_translations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('about_us_id');
            $table->string('locale',2)->index();
            $table->string('title');
            $table->longText('description');
            $table->timestamps();

            $table->unique(['about_us_id', 'locale']);
            $table->foreign('about_us_id')->references('id')->on('about_us')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('about_us_translations');
    }
};
