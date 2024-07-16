<?php

namespace Database\Seeders;

use App\Models\DataPenduduk;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Operator',
            'username' => 'operator',
            'password' => 'operator',
        ]);

        DataPenduduk::factory()->sequence(
            ['tanggal_lahir' => fake()->randomElement([2008, 2009, 2010]) . '-' . fake()->month() . '-' . fake()->dayOfMonth(),],
            ['pekerjaan' => fake()->randomElement(['Pelajar', 'Mahasiswa']),],
            ['status_perkawinan' => 'Belum Kawin'],
            ['status_dalam_keluarga' => 'Anak'],
            ['kewarganegaraan' => 'WNI'],
            ['no_paspor' => null],
            ['no_kitap' => null],
            ['nama_ayah' => null],
            ['nama_ibu' => null],
        )->count(50)->create();
    }
}
