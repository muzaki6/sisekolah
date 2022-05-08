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
                    <div class="card-header"><b>Data Entry Siswa</b></div>
                    <div class="card-body">
                        @component('components.error')
                        @endcomponent
                        <form action="{{ route('siswa.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row mb-1">
                                <label for="no_induk" class="col-sm-2 col-form-label">Nomor Induk</label>
                                <div class="col-sm-10">
                                    <input id="no_induk" name="no_induk" type="text" class="form-control"
                                        placeholder="Masukan Nomor Induk">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                                <div class="col-sm-10">
                                    <input id="nama" name="nama" type="text" class="form-control"
                                        placeholder="Masukan Nama">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="jenis_kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
                                <div class="col-sm-10">
                                    <input id="jenis_kelamin" name="jenis_kelamin" type="text" class="form-control"
                                        placeholder="Masukan Jenis Kelamin">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="agama" class="col-sm-2 col-form-label">Agama</label>
                                <div class="col-sm-10">
                                    <input id="agama" name="agama" type="text" class="form-control"
                                        placeholder="Masukan Agama">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                                <div class="col-sm-10">
                                    <input id="alamat" name="alamat" type="text" class="form-control"
                                        placeholder="Masukan Alamat">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label for="tahun_masuk" class="col-sm-2 col-form-label">Tahun Masuk</label>
                                <div class="col-sm-10">
                                    <input id="tahun_masuk" name="tahun_masuk" type="text" class="form-control"
                                        placeholder="Masukan Alamat">
                                </div>
                            </div>
                            <hr>
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
    <script>
        $(function() {
            $('#siswa').select2({
                placeholder: 'Pilih kategori',
                ajax: {
                    url: '{{ route('siswa.all') }}',
                    processResults: function(data) {
                        return {
                            results: data.map(function(item) {
                                return {
                                    id: item.id,
                                    text: item.name
                                }
                            })
                        }
                    }
                }
            })
        })
    </script>
@endsection
