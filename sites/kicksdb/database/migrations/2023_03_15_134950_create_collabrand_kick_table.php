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
        Schema::create('collabrand_kick', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('collabrand_id');
            $table->unsignedBigInteger('kick_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('collabrand_kick');
    }
};
