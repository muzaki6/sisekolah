@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        Tambah User
                        <a href="{{ route('users.index') }}" style="float: right; color:red;"><i
                                class="fa-solid fa-circle-xmark"></i></a>
                    </div>
                    <div class="card-body">
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        {!! Form::open(['class' => 'row g-3', 'route' => 'users.store', 'method' => 'POST']) !!}
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Name</label>
                            <input type="text" name="name" class="form-control" placeholder="Name">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="col-md-6">
                            <label for="inputAddress" class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="col-md-6">
                            <label for="inputAddress2" class="form-label">Confirm Password</label>
                            <input type="password" name="confirm-password" class="form-control"
                                placeholder="Confirm Password">
                        </div>
                        <div class="col-md-12">
                            <p>Role</p>
                            {!! Form::select('roles[]', $roles, [], ['class' => 'form-control', 'multiple']) !!}
                        </div>

                        <div class="col-12 d-md-flex justify-content-md-end">
                            <button type="submit" class="btn btn-outline-success btn-md btn-block">Submit</button>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
