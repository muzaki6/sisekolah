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

    protected $fillable = [
        'id', 'content'
    ];
}
