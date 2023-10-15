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
        Schema::create('schedulings', function (Blueprint $table) {
            $table->id();
            $table->string('date');
            $table->string('confirmationCode')->unique();
            $table->unsignedBigInteger('client_id'); // Alterei para 'client_id'
            $table->unsignedBigInteger('lesson_id'); // Alterei para 'lesson_id'

            $table->timestamps();

           // Alterei para 'client_id'
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('schedulings');
    }
};
