@extends('layouts.master')

@section('title')
    Tạo mới 
@endsection

@section('content')
    <form action="{{route('users.store')}}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mt-3 mb-3">
            <label class="form-label">Tên</label>
            <input type="text" class="form-control" name="name" >
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Email</label>
            <input type="text" class="form-control" name="email" >
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Type</label>
            <input type="text" class="form-control" name="type" >
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">DOB</label>
            <input type="date" class="form-control" name="dob" >
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Phone</label>
            <input type="number" class="form-control" name="phone" >
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Address</label>
            <input type="text" class="form-control" name="address" >
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Ảnh</label>
            <input type="file" class="form-control" name="image" >
        </div>
        <div class="mt-3 mb-3">
            <label class="form-label">Password</label>
            <input type="text" class="form-control" name="password" >
        </div>
        <button class="btn btn-success">Tạo mới</button>
    </form>
@endsection
