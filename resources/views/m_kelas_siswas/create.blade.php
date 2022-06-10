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
                    <div class="card-header"><b>Data Entry Kelas</b></div>
                    <div class="card-body">
                        @component('components.error')
                        @endcomponent
                        <form action="{{ route('m_kelas_siswas.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row mb-1">
                                <label for="siswa-option" class="col-sm-2 col-form-label">Pilih Siswa</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="siswa-option" name="no_induk">
                                        <option value="">Pilih Siswa</option>
                                        @foreach ($siswa as $sis)
                                            <option value="{{ $sis->no_induk }}">{{ $sis->no_induk }}
                                                {{ $sis->nama }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="kelas-option" class="col-sm-2 col-form-label">Pilih Kelas</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="kelas-option" name="id_kelas">
                                        <option value="">Pilih Kelas</option>
                                        @foreach ($kelas as $kls)
                                            <option value="{{ $kls->id_kelas }}">{{ $kls->kelas }}
                                                {{ $kls->jurusan }} {{ $kls->ruang }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group d-flex justify-content-end">
                                <input type="submit" class="btn btn-dark mb-2" value='Submit'>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js_custom')
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
@endsection
