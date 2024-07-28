<?php

namespace App\Http\Controllers;

use App\Models\Type;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{
    const PATH_VIEW = 'users.';
    const PATH_UPLOAD = 'users';

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $data = User::query()->get();
        return view(self::PATH_VIEW . __FUNCTION__, compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $types = Type::query()->pluck('name', 'id')->all();
        return view(self::PATH_VIEW . __FUNCTION__, compact('types'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request);
        //
        $data = $request->except('image');
        if ($request->hasFile('image')) {
            $data['image'] = Storage::put(self::PATH_UPLOAD, $request->file('image'));

            // dd($data['image']);
        }
        User::query()->create($data);   
        return redirect()->route('users.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        //
        $types = Type::query()->pluck('name', 'id')->all();
        return view(self::PATH_VIEW . __FUNCTION__, compact('types', 'user'));
    }
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user)
    {
        //
        $data = $request->except('image');
        if ($request->hasFile('image')) {
            $data['image'] = Storage::put('users', $request->file('image'));
            if (!empty($user->image) && Storage::exists($user->image)) {
                Storage::delete($user->image);
            }
        } else {
            $data['image'] = $user->image;
        }
            //    dd($data);
        $user->update($data);
        return redirect()->route('users.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        //
        $user->delete();
        return back();
    }
}
