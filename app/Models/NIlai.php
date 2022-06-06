<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Nilai extends Model
{
    use HasFactory;
    protected $table = 'nilai';
    protected $guarded = ['id_nilai'];
    protected $primaryKey = 'id_nilai';
    protected $keyType = 'string';
}
