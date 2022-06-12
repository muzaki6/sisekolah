<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dnilai extends Model
{
    use HasFactory;
    protected $table = 'dnilai';
    protected $guarded = ['id'];
    protected $primaryKey = 'id';

    protected $fillable = [
        'id', 'dnilai', 'id_siswa', 'id_nilai', 'id_mapel', 'created_at', 'updated_at'
    ];
}
