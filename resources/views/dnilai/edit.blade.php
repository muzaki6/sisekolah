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
                    <div class="card-header"><b>Edit Nilai</b></div>
                    <div class="card-body">
                        @component('components.error')
                        @endcomponent
                        <form action="{{ route('dnilai.update', $dnilai->id) }}" method="post"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row mb-1">
                                <label for="dnilai" class="col-sm-2 col-form-label">Nilai</label>
                                <div class="col-sm-10">
                                    <input value="{{ $dnilai->dnilai }}" id="dnilai" name="dnilai" type="text"
                                        class="form-control" placeholder="Masukan Nilai">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="siswa-option" class="col-sm-2 col-form-label">Nama Siswa</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="siswa-option" name="id_siswa">
                                        @foreach ($siswas as $nmsiswa)
                                            <option value="{{ $nmsiswa->id }}"
                                                {{ old('id', $dnilai->id_siswa) == $nmsiswa->id ? 'selected' : null }}>
                                                {{ $nmsiswa->nama }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="nilai-option" class="col-sm-2 col-form-label">Jenis Nilai</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="nilai-option" name="id_nilai">
                                        @foreach ($nilais as $nmnilai)
                                            <option value="{{ $nmnilai->id_nilai }}"
                                                {{ old('id', $dnilai->id_nilai) == $nmnilai->id_nilai ? 'selected' : null }}>
                                                {{ $nmnilai->nilai }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="mapel-option" class="col-sm-2 col-form-label">Mata Pelajaran</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="mapel-option" name="id_mapel">
                                        @foreach ($mapels as $nmmapel)
                                            <option value="{{ $nmmapel->id_mapel }}"
                                                {{ old('id', $dnilai->id_mapel) == $nmmapel->id_mapel ? 'selected' : null }}>
                                                {{ $nmmapel->mapel }}</option>
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
