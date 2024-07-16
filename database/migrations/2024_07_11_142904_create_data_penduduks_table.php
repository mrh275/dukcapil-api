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
        Schema::create('data_penduduks', function (Blueprint $table) {
            $table->id();
            $table->string('nik', 16)->unique();
            $table->string('nama', 255);
            $table->string('tempat_lahir', 255);
            $table->date('tanggal_lahir');
            $table->enum('jenis_kelamin', ['L', 'P']);
            $table->string('alamat', 255);
            $table->string('rt', 3);
            $table->string('rw', 3);
            $table->string('kelurahan', 255);
            $table->string('kecamatan', 255);
            $table->string('agama', 255);
            $table->string('pendidikan', 255);
            $table->string('pekerjaan', 255);
            $table->enum('golongan_darah', ['A', 'B', 'AB', 'O']);
            $table->enum('status_perkawinan', ['Kawin', 'Belum Kawin', 'Cerai Hidup', 'Cerai Mati']);
            $table->date('tanggal_perkawinan');
            $table->string('status_dalam_keluarga', 255);
            $table->string('kewarganegaraan', 255);
            $table->string('no_paspor', 255)->nullable();
            $table->string('no_kitap', 255)->nullable();
            $table->string('nama_ayah', 255)->nullable();
            $table->string('nama_ibu', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('data_penduduks');
    }
};
