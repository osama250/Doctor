<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

    public function up()
    {
        Schema::create('category_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('category_id');
            $table->string('locale', 2)->index();
            $table->text('title');
            $table->longText('description');
            $table->timestamps();

            $table->unique(['category_id', 'locale']);
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('category_translations');
    }
};
