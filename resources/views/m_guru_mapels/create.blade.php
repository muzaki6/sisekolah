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
                        <form action="{{ route('m_guru_mapels.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row mb-1">
                                <label for="pegawai-option" class="col-sm-2 col-form-label">Pilih Guru</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="pegawai-option" name="id_pegawai">
                                        <option value="">Pilih Guru</option>
                                        @foreach ($pegawai as $peg)
                                            <option value="{{ $peg->id_pegawai }}">{{ $peg->nama }}</option>
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
                                            <option value="{{ $mpl->id_mapel }}">{{ $mpl->mapel }}</option>
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
