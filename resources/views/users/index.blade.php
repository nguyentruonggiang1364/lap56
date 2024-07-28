@extends('layouts.master')

@section('title')
    Danh sách sách
@endsection

@section('content')
<a href="{{route('users.create')}}" class="btn btn-info">them</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Email</th>
                <th>Type</th>
                <th>DOB</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Image</th>
                <th>Password</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            @foreach($data as $item)
                <tr>
                    <td>{{$item->id}}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->email,}}</td>
                    <td>{{$item->type}}</td>
                    <td>{{$item->dob}}</td>
                    <td>{{$item->phone}}</td>
                    <td>{{$item->address}}</td>
                    <td>
                    <div style="width: 100px;height: 100px;">
                                <img src="/storage/app/{{ $item->image }}"
                                     style="max-width: 100%; max-height: 100%;" alt="">
                            </div>
                        <!-- @if(!empty($item->image))
                            <div style="width: 100px;height: 100px;">
                                <img src="{{ \Storage::url($item->image)}}"
                                     style="max-width: 100%; max-height: 100%;" alt="">
                            </div>
                        @endif -->
                    </td>
                    <td>{{$item->password}}</td>
                    <td>
                        <a href="{{route('users.edit', $item)}}" class="btn btn-success">Sửa</a>
                        <form action="{{route('users.destroy', $item)}}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger">Xóa</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
