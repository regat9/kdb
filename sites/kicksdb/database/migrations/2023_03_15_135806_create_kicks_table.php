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
        Schema::create('kicks', function (Blueprint $table) {
            $table->id();
            $table->string('title')->unique();
            $table->string('style_code')->unique();
            $table->string('slug')->unique();
            $table->text('description')->nullable();
            $table->date('release_date')->nullable();
            $table->unsignedBigInteger('kmodel_id')->nullable();
            $table->unsignedBigInteger('category_id')->nullable();
            $table->boolean('is_published')->default('true');
            $table->timestamps();

            $table->foreign('kmodel_id')
                ->references('id')
                ->on('kmodels')
                ->onUpdate('cascade')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kicks');
    }
};
