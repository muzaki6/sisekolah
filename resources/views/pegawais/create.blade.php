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
                        <form action="{{ route('pegawais.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row mb-1">
                                <label for="id_pegawai" class="col-sm-2 col-form-label">ID Pegawai</label>
                                <div class="col-sm-10">
                                    <input id="id_pegawai" name="id_pegawai" type="text" class="form-control"
                                        placeholder="Masukan ID Pegawai">
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
                                <label for="status-option" class="col-sm-2 col-form-label">Status Pegawai</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="status-option" name="id_status">
                                        <option value="">Pilih Status Pegawai</option>
                                        @foreach ($status as $sts)
                                            <option value="{{ $sts->id_status }}">{{ $sts->status }}</option>
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
    {{-- <script>
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
    </script> --}}
@endsection
