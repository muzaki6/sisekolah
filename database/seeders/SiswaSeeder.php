<?php

namespace Database\Seeders;

use App\Models\Siswa;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class SiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 1; $i <= 150; $i++) {
            $no_induk = '2022' . '2' . $i;
            $nama = 'Siswa' . $i;
            $jenis_kelamin = 'Laki-Laki';
            $agama = 'Islam';
            $alamat = 'Indonesia';
            $tahun_masuk = '2022';
            Siswa::create([
                'no_induk' => $no_induk,
                'nama' => $nama,
                'jenis_kelamin' => $jenis_kelamin,
                'agama' => $agama,
                'alamat' => $alamat,
                'tahun_masuk' => $tahun_masuk
            ]);
        }
    }
}
