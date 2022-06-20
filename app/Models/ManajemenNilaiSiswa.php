<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ManajemenKelasSiswa extends Model
{
    use HasFactory;
    protected $table = 'm_kelas_siswa';
    protected $guarded = ['id_kelas_siswa'];
    protected $primaryKey = 'id_kelas_siswa';

    public function kelas()
    {
        return $this->belongsToMany(Kelas::class, 'kelas', 'id_kelas', 'id_kelas');
    }

    public function siswa()
    {
        return $this->belongsToMany(Siswa::class, 'siswas', 'no_induk', 'no_induk');
    }
}
