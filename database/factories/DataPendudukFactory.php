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
            'nama' => fake()->firstName($gender = 'male') . ' ' . fake()->lastName(),
            'tempat_lahir' => $this->faker->randomElement(['Karawang', 'Bekasi', 'Subang', 'Purwakarta']),
            'tanggal_lahir' => date('Y-m-d', strtotime($this->faker->randomElement([2008, 2009, 2010]) . '-' . $this->faker->month() . '-' . $this->faker->dayOfMonth())),
            'jenis_kelamin' => 'L',
            'alamat' => $this->faker->randomElement(['Dusun Krajan', 'Dusun Kalihurp', 'Dusun Sukamanah', 'Dusun Karajan Timur', 'Dusun Sukajadi', 'Dusun Karajan Barat']),
            'rt' => $this->faker->randomElement(['001', '002', '003', '004', '005', '006', '007', '008', '009', '010', '011', '012', '013', '014', '015', '016', '017', '018', '019', '020']),
            'rw' => $this->faker->randomElement(['001', '002', '003', '004', '005', '006', '007', '008', '009', '010', '011', '012', '013', '014', '015', '016', '017', '018', '019', '020']),
            'kelurahan' => $this->faker->randomElement(['Cikampek Barat', 'Cikampek Selatan', 'Dawuan Barat', 'Dawuan Tengah', 'Dawuan Timur', 'Cikampek Kota', 'Cikampek Pusaka', 'Kamojing', 'Kalihurip', 'Cikampek Timur']),
            'kecamatan' => 'Cikampek',
            'kabupaten' => 'Karawang',
            'agama' => $this->faker->randomElement(['Islam', 'Kristen']),
            'pendidikan' => 'SMP',
            'pekerjaan' => 'Pelajar',
            'golongan_darah' => $this->faker->randomElement(['A', 'B', 'AB', 'O']),
            'status_perkawinan' => 'Belum Kawin',
            'tanggal_perkawinan' => null,
            'status_dalam_keluarga' => 'Anak',
            'kewarganegaraan' => 'WNI',
            'no_paspor' => null,
            'no_kitap' => null,
            'nama_ayah' => null,
            'nama_ibu' => null,
        ];
    }
}
