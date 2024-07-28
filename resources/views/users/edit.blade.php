@extends('layouts.master')

@section('title')
    Cập Nhật
@endsection

@section('content')
    <form action="{{route('users.update', $user)}}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="mt-3 mb-3">
            <label class="form-label">Tên</label>
            <input type="text" class="form-control" name="name" value="{{$user->name}}">
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Email</label>
            <input type="text" class="form-control" name="email" value="{{$user->email}}">
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Type</label>
            <input type="text" class="form-control" name="type" value="{{$user->type}}">
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">DOB</label>
            <input type="date" class="form-control" name="dob" value="{{$user->dob}}">
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Phone</label>
            <input type="number" class="form-control" name="phone" value="{{$user->phone}}">
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Address</label>
            <input type="text" class="form-control" name="address" value="{{$user->address}}">
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Ảnh</label>
            <input type="file" class="form-control" name="image">
            @if(!empty($user->image))
                <div style="width: 100px;height: 100px;">
                    <img src="{{Storage::url($user->image)}}"
                         style="max-width: 100%; max-height: 100%;" alt="">
                </div>
            @endif
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Password</label>
            <input type="text" class="form-control" name="password" value="{{$user->password}}">
        </div>
        <button class="btn btn-success">cap nhat</button>
    </form>
@endsection
