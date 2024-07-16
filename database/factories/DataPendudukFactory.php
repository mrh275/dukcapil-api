<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\DataPenduduk>
 */
class DataPendudukFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nik' => $this->faker->unique()->numerify('321613##########'),
            'nama' => $this->faker->name(),
            'tempat_lahir' => $this->faker->randomElement(['Karawang', 'Bekasi', 'Subang', 'Purwakarta']),
            'tanggal_lahir' => $this->faker->date(),
            'jenis_kelamin' => $this->faker->randomElement(['L', 'P']),
            'alamat' => $this->faker->address(),
            'rt' => $this->faker->numerify('###'),
            'rw' => $this->faker->numerify('###'),
            'kelurahan' => $this->faker->randomElement(['Cikampek Utara', 'Cikampek Selatan', 'Dawuan Barat', 'Dawuan Tengah', 'Dawuan Timur']),
            'kecamatan' => 'Cikampek',
            'agama' => $this->faker->randomElement(['Islam', 'Kristen']),
            'pendidikan' => $this->faker->randomElement(['Tidak Sekolah', 'SD', 'SMP', 'SMA', 'D3', 'S1', 'S2', 'S3']),
            'pekerjaan' => $this->faker->jobTitle(),
            'golongan_darah' => $this->faker->randomElement(['A', 'B', 'AB', 'O']),
            'status_perkawinan' => $this->faker->randomElement(['Kawin', 'Belum Kawin', 'Cerai Hidup', 'Cerai Mati']),
            'tanggal_perkawinan' => $this->faker->date(),
            'status_dalam_keluarga' => $this->faker->randomElement(['Kepala Keluarga', 'Istri', 'Anak']),
            'kewarganegaraan' => $this->faker->randomElement(['WNI', 'WNA']),
            'no_paspor' => $this->faker->numerify('############'),
            'no_kitap' => $this->faker->numerify('############'),
            'nama_ayah' => $this->faker->name(),
            'nama_ibu' => $this->faker->name(),
        ];
    }
}
