<?php

namespace App\Http\Controllers;

use App\Models\Dnilai;
use App\Models\Siswa;
use App\Models\Nilai;
use App\Models\Mapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DnilaiController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:dnilai-list|dnilai-create|dnilai-edit|dnilai-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:dnilai-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:dnilai-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:dnilai-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dnilai.index', [
            'dnilai' => DB::select('SELECT A.id, A.dnilai, A.id_siswa, B.nama, A.id_nilai, C.nilai, A.id_mapel, D.mapel
            FROM dnilai AS A
            LEFT JOIN siswas AS B ON A.id_siswa = B.id
            LEFT JOIN nilai AS C ON A.id_nilai = C.id_nilai
            LEFT JOIN mapel AS D ON A.id_mapel = D.id_mapel'),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dnilai.create', [
            'siswas' => DB::select('SELECT * FROM siswas'),
            'nilais' => DB::select('SELECT * FROM nilai'),
            'mapels' => DB::select('SELECT * FROM mapel'),
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
        $this->validate($request, [
            'dnilai' => 'required|numeric',
            'id_siswa' => 'required',
            'id_nilai' => 'required',
            'id_mapel' => 'required'
        ]);

        $dnilai = new Dnilai();
        $dnilai->dnilai = $request->dnilai;
        $dnilai->id_siswa = $request->id_siswa;
        $dnilai->id_nilai = $request->id_nilai;
        $dnilai->id_mapel = $request->id_mapel;
        $dnilai->save();

        return redirect()->route('dnilai.index')->with('status', 'Data pegawai berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Dnilai  $dnilai
     * @return \Illuminate\Http\Response
     */
    public function show(Dnilai $dnilai)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Dnilai  $dnilai
     * @return \Illuminate\Http\Response
     */
    public function edit(Dnilai $dnilai)
    {
        $siswas = Siswa::all();
        $nilais = Nilai::all();
        $mapels = Mapel::all();
        return view('dnilai.edit', compact('dnilai', 'siswas', 'nilais', 'mapels'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Dnilai  $dnilai
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Dnilai $dnilai)
    {
        $request->validate([
            'dnilai' => 'required',
            'id_siswa' => 'required',
            'id_nilai' => 'required',
            'id_mapel' => 'required'
        ]);
        $dnilai->dnilai = $request->dnilai;
        $dnilai->id_siswa = $request->id_siswa;
        $dnilai->id_nilai = $request->id_nilai;
        $dnilai->id_mapel = $request->id_mapel;
        $dnilai->save();

        return redirect()->route('dnilai.index')->with('success', 'Data nilai berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Dnilai  $dnilai
     * @return \Illuminate\Http\Response
     */
    public function destroy(Dnilai $dnilai)
    {
        $dnilai->delete();

        return redirect()->route('dnilai.index')
            ->with('status',  'Nilai berhasil dihapus');
    }
}
