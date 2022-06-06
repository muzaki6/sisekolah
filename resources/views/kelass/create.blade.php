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
                        <form action="{{ route('kelass.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row mb-1">
                                <label for="id_kelas" class="col-sm-2 col-form-label">ID Kelas</label>
                                <div class="col-sm-10">
                                    <input id="id_kelas" name="id_kelas" type="text" class="form-control"
                                        placeholder="Masukan Id Kelas">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="status-option" class="col-sm-2 col-form-label">Kelas</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="status-option" name="kelas">
                                        <option value="X">X</option>
                                        <option value="XI">XI</option>
                                        <option value="XII">XII</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="status-option" class="col-sm-2 col-form-label">Jurusan</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="status-option" name="jurusan">
                                        <option value="IPA">IPA</option>
                                        <option value="IPS">IPS</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="status-option" class="col-sm-2 col-form-label">Ruang</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="status-option" name="ruang">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
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
