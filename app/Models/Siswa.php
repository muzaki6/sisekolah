<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Siswa extends Model
{
    use HasFactory;
    protected $table = 'siswas';
    protected $guarded = ['id'];

    // public function scopeGetAllSiswaWithPagination()
    // {
    //     return $this->select(DB::raw('id, no_induk, nama, jenis_kelamin, agama, alamat, tahun_masuk, created_at, updated_at'))
    //         ->orderBy('created_at', 'desc')
    //         ->paginate(10)
    //         ->onEachSide(1);
    // }
}
