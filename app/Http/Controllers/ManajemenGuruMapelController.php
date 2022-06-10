<?php

namespace App\Http\Controllers;

use App\Models\Pegawai;
use App\Models\Kelas;
use App\Models\Mapel;
use App\Models\ManajemenGuruMapel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class ManajemenGuruMapelController extends Controller
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
        $m_guru_mapels =  DB::table('m_guru_mapel')
            ->join('pegawai', 'm_guru_mapel.id_pegawai', '=', 'pegawai.id_pegawai')
            ->join('kelas', 'm_guru_mapel.id_kelas', '=', 'kelas.id_kelas')
            ->join('mapel', 'm_guru_mapel.id_mapel', '=', 'mapel.id_mapel')
            ->select('m_guru_mapel.id_guru_mapel', 'pegawai.nama', 'mapel.mapel', 'kelas.kelas', 'kelas.jurusan', 'kelas.ruang')
            ->orderBy('m_guru_mapel.id_guru_mapel')
            ->paginate(5);
        return view('m_guru_mapels.index', compact('m_guru_mapels'))->with('i', ($request->input('page', 1) - 1) * 5);
    }

    public function create()
    {
        $pegawai = pegawai::all()->where('id_status', 1);
        $mapel = mapel::all();
        $kelas = kelas::all();
        return view('m_guru_mapels.create', compact('pegawai', 'mapel', 'kelas'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'id_pegawai' => 'required',
            'id_mapel' => 'required',
            'id_kelas' => 'required'
        ]);

        $mgm = new ManajemenGuruMapel();
        $mgm->id_pegawai = $request->id_pegawai;
        $mgm->id_mapel = $request->id_mapel;
        $mgm->id_kelas = $request->id_kelas;
        $mgm->save();

        return redirect()->route('m_guru_mapels.index')->with('status', 'Data berhasil ditambahkan');
    }

    public function show(ManajemenGuruMapel $mgm)
    {
    }

    public function edit($id)
    {
        $mgm = ManajemenGuruMapel::findOrFail($id);
        $pegawai = pegawai::all()->where('id_status', 1);
        $mapel = mapel::all();
        $kelas = kelas::all();
        return view('m_guru_mapels.edit', compact('mgm', 'pegawai', 'mapel', 'kelas'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'id_pegawai' => 'required',
            'id_mapel' => 'required',
            'id_kelas' => 'required'
        ]);
        $mgm = ManajemenGuruMapel::findOrFail($id);
        $mgm->id_pegawai = $request->id_pegawai;
        $mgm->id_mapel = $request->id_mapel;
        $mgm->id_kelas = $request->id_kelas;
        $mgm->save();

        return redirect()->route('m_guru_mapels.index')->with('status', 'Data berhasil diedit');
    }


    public function destroy($id)
    {
        DB::table("m_guru_mapel")->where('id_guru_mapel', $id)->delete();
        return redirect()->route('m_guru_mapels.index')->with('status', 'Data berhasil dihapus');
    }
}
