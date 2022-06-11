<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Siswa;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    // public function index()
    // {
    //     return view('home');
    // }

    public function index()
    {
        return view('home', [
            'siswas' => DB::select('SELECT count(no_induk) AS "hitungsiswa" FROM siswas'),
            'pegawais' => DB::select('SELECT count(id_pegawai) AS "hitungpegawai" FROM pegawai'),
            'kelas' => DB::select('SELECT count(id_kelas) AS "hitungkelas" FROM kelas'),
        ]);
    }
}
