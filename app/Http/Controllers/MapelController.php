<?php

namespace App\Http\Controllers;

use App\Models\Mapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class MapelController extends Controller
{
    // function __construct()
    // {
    //     $this->middleware('permission:pegawai-list|pegawai-create|pegawai-edit|pegawai-delete', ['only' => ['index', 'store']]);
    //     $this->middleware('permission:pegawai-create', ['only' => ['create', 'store']]);
    //     $this->middleware('permission:pegawai-edit', ['only' => ['edit', 'update']]);
    //     $this->middleware('permission:pegawai-delete', ['only' => ['destroy']]);
    // }

    public function index()
    {
        return view('mapels.index', [
            'mapels' => Mapel::orderBy('created_at', 'asc')->paginate(10)
        ]);
    }

    public function create()
    {
        return view('mapels.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'id_mapel' => 'required|alpha_num',
            'mapel' => 'required',
        ], [
            'id_mapel.required' => 'Id Mata Pelajaran wajib diisi'
        ]);

        $mapel = new Mapel();
        $mapel->id_mapel = $request->id_mapel;
        $mapel->mapel = $request->mapel;
        $mapel->save();

        return redirect()->route('mapels.index')->with('status', 'Data mata pelajaran berhasil ditambahkan');
    }

    // public function show(Mapel $mapel)
    // {
    // }

    public function edit(Mapel $mapel)
    {
        return view('mapels.edit', compact('mapel'));
    }

    public function update(Request $request, Mapel $mapel)
    {
        $request->validate([
            'id_mapel' => 'required|alpha_num',
            'mapel' => 'required',
        ]);

        $mapel->id_mapel = $request->id_mapel;
        $mapel->mapel = $request->mapel;
        $mapel->save();

        return redirect()->route('mapels.index')->with('status', 'Data mata pelajaran berhasil diubah');
    }


    public function destroy(Mapel $mapel)
    {
        $mapel->delete();
        return redirect()->route('mapels.index')->with('status', 'Data mata pelajaran berhasil dihapus');
    }
}
