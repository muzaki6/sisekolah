@extends('layouts.admin')
@section('css_custom')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@ttskch/select2-bootstrap4-theme@1.3.4/dist/select2-bootstrap4.min.css">
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header"><b>Data Entry Pegawai</b></div>
                    <div class="card-body">
                        @component('components.error')
                        @endcomponent
                        <form action="{{ route('m_guru_mapels.update', $mgm->id_guru_mapel) }}" method="post"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row mb-1">
                                <label for="pegawai-option" class="col-sm-2 col-form-label">Pilih Pegawai</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="pegawai-option" name="id_pegawai">
                                        @foreach ($pegawai as $peg)
                                            <option value="{{ $peg->id_pegawai }}"
                                                {{ old('id_pegawai', $mgm->id_pegawai) == $peg->id_pegawai ? 'selected' : null }}>
                                                {{ $peg->nama }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="mapel-option" class="col-sm-2 col-form-label">Pilih Mata Pelajaran</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="mapel-option" name="id_mapel">
                                        <option value="">Pilih Mata Pelajaran</option>
                                        @foreach ($mapel as $mpl)
                                            <option value="{{ $mpl->id_mapel }}"
                                                {{ old('id_mapel', $mgm->id_mapel) == $mpl->id_mapel ? 'selected' : null }}>
                                                {{ $mpl->mapel }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="kelas-option" class="col-sm-2 col-form-label">Pilih Kelas</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="kelas-option" name="id_kelas">
                                        @foreach ($kelas as $kls)
                                            <option value="{{ $kls->id_kelas }}"
                                                {{ old('id_mapel', $mgm->id_kelas) == $kls->id_kelas ? 'selected' : null }}>
                                                {{ $kls->kelas }} {{ $kls->jurusan }} {{ $kls->ruang }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group d-flex justify-content-end">
                                <input type="submit" class="btn btn-dark mb-2" value='Submit'>
                            </div>
                            @method('PUT')
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
