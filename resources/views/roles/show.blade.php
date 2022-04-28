@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        Show Role
                        <a href="{{ route('roles.index') }}" style="float: right; color:red;"><i
                                class="fa-solid fa-circle-xmark"></i></a>
                    </div>
                    <div class="card-body">
                        <table class="d-flex justify-content-start">
                            <tr>
                                <td>Name</td>
                                <td>:</td>
                                <td>{{ $role->name }}</td>
                            </tr>
                            <tr>
                                <td>Permissions</td>
                                <td>:</td>
                                <td>
                                    @if (!empty($rolePermissions))
                                        @foreach ($rolePermissions as $v)
                                            <label class="badge bg-success">{{ $v->name }},</label>
                                        @endforeach
                                    @endif
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
