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
        Schema::create('years', function (Blueprint $table) {
            $table->id();
            $table->year('year');
            $table->boolean('is_current');
            $table->dateTime('ppmp_deadline')->nullable();
            $table->dateTime('pr_deadline')->nullable();
            $table->timestamps();
            $table->boolean('is_open')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('years');
    }
};
