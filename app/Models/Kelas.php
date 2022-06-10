<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\Models\ManajemenGuruMapel;
use App\Models\ManajemenKelasSiswa;

class Kelas extends Model
{
    use HasFactory;
    protected $table = 'kelas';
    protected $guarded = ['id_kelas'];
    protected $primaryKey = 'id_kelas';
    protected $keyType = 'string';
}
