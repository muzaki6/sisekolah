<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\ManajemenKelasSiswa;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class ManajemenKelasSiswaController extends Controller
{
    // function __construct()
    // {
    //     $this->middleware('permission:pegawai-list|pegawai-create|pegawai-edit|pegawai-delete', ['only' => ['index', 'store']]);
    //     $this->middleware('permission:pegawai-create', ['only' => ['create', 'store']]);
    //     $this->middleware('permission:pegawai-edit', ['only' => ['edit', 'update']]);
    //     $this->middleware('permission:pegawai-delete', ['only' => ['destroy']]);
    // }

    public function index(Request $request)
    {
        $m_kelas_siswas =  DB::table('m_kelas_siswa')
            ->join('siswas', 'm_kelas_siswa.no_induk', '=', 'siswas.no_induk')
            ->join('kelas', 'm_kelas_siswa.id_kelas', '=', 'kelas.id_kelas')
            ->select('m_kelas_siswa.*', 'siswas.*', 'kelas.*')
            ->orderBy('m_kelas_siswa.id_kelas_siswa')
            ->paginate(5);
        return view('m_kelas_siswas.index', compact('m_kelas_siswas'))->with('i', ($request->input('page', 1) - 1) * 5);
    }

    public function create()
    {
        $siswa = siswa::all();
        $kelas = kelas::all();
        return view('m_kelas_siswas.create', compact('siswa', 'kelas'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'no_induk' => 'required|unique:m_kelas_siswa,no_induk',
            'id_kelas' => 'required'
        ]);

        $mks = new ManajemenKelasSiswa();
        $mks->no_induk = $request->no_induk;
        $mks->id_kelas = $request->id_kelas;
        $mks->save();

        return redirect()->route('m_kelas_siswas.index')->with('status', 'Data berhasil ditambahkan');
    }

    public function show(ManajemenKelasSiswa $mks)
    {
    }

    public function edit($id)
    {
        $mks = ManajemenKelasSiswa::findOrFail($id);
        $siswa = siswa::all();
        $kelas = kelas::all();
        return view('m_kelas_siswas.edit', compact('mks', 'siswa', 'kelas'));
    }

    public function update(Request $request, $id)
    {

        $this->validate($request, [
            'id_kelas' => 'required'
        ]);
        $mks = ManajemenKelasSiswa::findOrFail($id);
        $mks->id_kelas = $request->id_kelas;
        $mks->save();

        return redirect()->route('m_kelas_siswas.index')->with('status', 'Data berhasil diubah');
    }


    public function destroy($id)
    {
        DB::table("m_kelas_siswa")->where('id_kelas_siswa', $id)->delete();
        return redirect()->route('m_kelas_siswas.index')->with('status', 'Data berhasil dihapus');
    }
}
