<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\Models\Pegawai;

class Status extends Model
{
    use HasFactory;
    protected $table = 'ref_status_pegawai';
    protected $guarded = ['id_status'];
}
