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
        Schema::create('kick_person', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('person_id');
            $table->unsignedBigInteger('kick_id');
            $table->timestamps();

            $table->foreign('person_id')
            ->references('id')
            ->on('people')
            ->onDelete('cascade')
            ->onUpdate('cascade');

        $table->foreign('kick_id')
            ->references('id')
            ->on('kicks')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kick_person');
    }
};
