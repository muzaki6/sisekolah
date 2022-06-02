<?php

namespace App\Http\Controllers;

use App\Models\Nilai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class NilaiController extends Controller
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
        return view('nilais.index', [
            'nilais' => Nilai::orderBy('created_at', 'asc')->paginate(10)
        ]);
    }

    public function create()
    {
        return view('nilais.create');
    }

    public function store(Request $request)
    {
    }

    // public function show(Mapel $mapel)
    // {
    // }

    public function edit(Nilai $nilai)
    {
    }

    public function update(Request $request, Nilai $nilai)
    {
    }


    public function destroy(Nilai $nilai)
    {
    }
}
