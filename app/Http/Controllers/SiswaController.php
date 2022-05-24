<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class SiswaController extends Controller
{
    // function __construct()
    // {
    //     $this->middleware('permission:siswa-list|siswa-create|siswa-edit|siswa-delete', ['only' => ['index', 'store']]);
    //     $this->middleware('permission:siswa-create', ['only' => ['create', 'store']]);
    //     $this->middleware('permission:siswa-edit', ['only' => ['edit', 'update']]);
    //     $this->middleware('permission:siswa-delete', ['only' => ['destroy']]);
    // }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('siswa.index', [
            'siswas' => DB::select('SELECT * FROM siswas AS A ORDER BY A.created_at DESC')
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('siswa.create', [
            'siswas' => Siswa::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'no_induk'      => 'required|max:10',
            'tahun_masuk'   => 'required|numeric',
        ]);

        $siswa = new Siswa();
        $siswa->no_induk = $request->no_induk;
        $siswa->nama = $request->nama;
        $siswa->jenis_kelamin = $request->jenis_kelamin;
        $siswa->agama = $request->agama;
        $siswa->alamat = $request->alamat;
        $siswa->tahun_masuk = $request->tahun_masuk;
        $siswa->save();

        return redirect()->route('siswa.index')->with('status', 'Data siswa berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function show(Siswa $siswa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function edit(Siswa $siswa)
    {
        return view('siswa.edit', compact('siswa'));
        // Check JSON
        // $post = Siswa::findOrFail($id);
        // return response()->json($post, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Siswa $siswa)
    {
        $request->validate([
            'no_induk'      => 'required|max:10',
            'tahun_masuk'   => 'required|numeric',
        ]);

        $siswa->update($request->all());

        return redirect()->route('siswa.index')->with('status', 'Siswa Berhasil diUpdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Siswa  $siswa
     * @return \Illuminate\Http\Response
     */
    public function destroy(Siswa $siswa)
    {
        $siswa->delete();

        return redirect()->route('siswa.index')
            ->with('success', 'Siswa Berhasil diHapus');
    }
}
