<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Pegawai extends Model
{
    use HasFactory;
    protected $table = 'pegawai';
    protected $guarded = ['id_pegawai'];
    protected $primaryKey = 'id_pegawai';

    public function status()
    {
        return $this->belongsToMany(Pegawai::class, 'ref_status_pegawai', 'id_status', 'id_status');
    }
}
