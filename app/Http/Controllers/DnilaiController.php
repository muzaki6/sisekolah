<?php

namespace App\Http\Controllers;

use App\Models\Dnilai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DnilaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dnilai.index', [
            'dnilai' => DB::select('SELECT * FROM dnilai AS A ORDER BY A.created_at DESC')
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Dnilai  $dnilai
     * @return \Illuminate\Http\Response
     */
    public function destroy(Dnilai $dnilai)
    {
        //
    }
}
