<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('images', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('kick_id');
            $table->string('img_orig')->nullable();
            $table->string('img_b')->nullable();
            $table->string('img_s')->nullable();
            $table->unsignedTinyInteger('display_order')->nullable();
            $table->timestamps();

            $table->foreign('kick_id')
                ->references('id')
                ->on('kicks')
                ->onUpdate('cascade')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('images');
    }
};
