<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class KelasController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:kelas-list|kelas-create|kelas-edit|kelas-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:kelas-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:kelas-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:kelas-delete', ['only' => ['destroy']]);
    }

    public function index()
    {
        return view('kelass.index', [
            'kelass' => Kelas::orderBy('created_at', 'asc')->paginate(100)
        ]);
    }

    public function create()
    {
        return view('kelass.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'id_kelas' => 'required|alpha_num|unique:kelas',
            'kelas' => 'required',
            'jurusan' => 'required',
            'ruang' => 'required'
        ], [
            'id_kelas.required' => 'ID KELAS HARUS DI ISI !!'
        ]);

        $kelas = new Kelas();
        $kelas->id_kelas = $request->id_kelas;
        $kelas->kelas = $request->kelas;
        $kelas->jurusan = $request->jurusan;
        $kelas->ruang = $request->ruang;
        $kelas->save();

        return redirect()->route('kelass.index')->with('status', 'Data kelas berhasil ditambahkan');
    }

    // public function show(Mapel $mapel)
    // {
    // }

    public function edit($id)
    {
        $kelas = kelas::findOrFail($id);
        return view('kelass.edit', [
            'kelas' => $kelas
        ]);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'id_kelas' => 'required|alpha_num|unique:kelas',
            'kelas' => 'required',
            'jurusan' => 'required',
            'ruang' => 'required'
        ], [
            'id_kelas.required' => 'ID KELAS HARUS DI ISI !!'
        ]);

        $kelas = Kelas::findOrFail($id);
        $kelas->id_kelas = $request->id_kelas;
        $kelas->kelas = $request->kelas;
        $kelas->jurusan = $request->jurusan;
        $kelas->ruang = $request->ruang;
        $kelas->save();

        return redirect()->route('kelass.index')->with('status', 'Data kelas berhasil diubah');
    }


    public function destroy($id)
    {
        DB::table("kelas")->where('id_kelas', $id)->delete();
        return redirect()->route('kelass.index')->with('status', 'Data kelas berhasil dihapus');
    }
}
