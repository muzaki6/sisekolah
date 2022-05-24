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
    protected $primaryKey = 'id';

    protected $fillable = [
        'id', 'no_induk', 'nama', 'jenis_kelamin', 'agama', 'alamat', 'tahun_masuk', 'created_at', 'updated_at'
    ];
}
