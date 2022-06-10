<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ManajemenGuruMapel extends Model
{
    use HasFactory;
    protected $table = 'm_guru_mapel';
    protected $guarded = ['id_guru_mapel'];
    protected $primaryKey = 'id_guru_mapel';

    public function pegawai()
    {
        return $this->belongsToMany(Pegawai::class, 'pegawai', 'id_pegawai', 'id_pegawai');
    }

    public function mapel()
    {
        return $this->belongsToMany(Mapel::class, 'mapel', 'id_mapel', 'id_mapel');
    }

    public function kelas()
    {
        return $this->belongsToMany(Kelas::class, 'kelas', 'id_kelas', 'id_kelas');
    }
}
