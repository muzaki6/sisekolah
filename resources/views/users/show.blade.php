@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        Show User
                        <a href="{{ route('users.index') }}" style="float: right; color:red;"><i
                                class="fa-solid fa-circle-xmark"></i></a>
                    </div>
                    <div class="card-body">
                        <table class="d-flex justify-content-start">
                            <tr>
                                <td>Name</td>
                                <td>:</td>
                                <td>{{ $user->name }}</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>:</td>
                                <td>{{ $user->email }}</td>
                            </tr>
                            <tr>
                                <td>Role</td>
                                <td>:</td>
                                <td>
                                    @if (!empty($user->getRoleNames()))
                                        @foreach ($user->getRoleNames() as $v)
                                            <label class="badge bg-success">{{ $v }}</label>
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
