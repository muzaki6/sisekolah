<?php

namespace App\Http\Controllers;

use App\Models\Pegawai;
use App\Models\Status;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class PegawaiController extends Controller
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
        return view('pegawais.index', [
            'pegawais' => DB::table('pegawai')
                ->join('ref_status_pegawai', 'pegawai.id_status', '=', 'ref_status_pegawai.id_status')
                ->select('pegawai.id_pegawai', 'pegawai.nama', 'ref_status_pegawai.status')
                ->orderBy('pegawai.id_pegawai')
                ->get()
        ]);
    }

    public function create()
    {
        $status = Status::all();
        return view('pegawais.create', compact('status'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'id_pegawai' => 'required',
            'nama' => 'required',
            'id_status' => 'required'
        ]);

        $pegawai = new Pegawai();
        $pegawai->id_pegawai = $request->id_pegawai;
        $pegawai->nama = $request->nama;
        $pegawai->id_status = $request->id_status;
        $pegawai->save();

        return redirect()->route('pegawais.index')->with('status', 'Data pegawai berhasil ditambahkan');
    }

    public function show(Pegawai $pegawai)
    {
    }

    public function edit(Pegawai $pegawai)
    {
        return view('pegawais.edit', [
            'pegawai' => $pegawai
        ]);
    }

    public function update(Request $request, Pegawai $pegawai)
    {
    }


    public function destroy(Pegawai $pegawai)
    {
    }
}
