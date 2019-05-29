<?php

namespace App\Http\Controllers\Api;

// use App\Http\Resources\User as UserResource;
use App\Http\Controllers\Controller;
use App\Http\Resources\User\UserResource;
use App\Models\Role;
use App\User;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class UserController extends Controller
{

    private function index()
    {
        $users_index = User::all();
        return UserResource::collection($users_index);
    }

    private function getdata()
    {
        $users = User::select('id', 'first_name', 'last_name', 'phone', 'email');
        return Datatables::of($users)->make(true);
    }

    private function create()
    {
    }

    private function store(Request $request)
    {
        $users = $request->isMethod('put') ? User::findOrFail($request->id) : new User();

        $users->id         = $request->id;
        $users->first_name = $request->first_name;
        $users->last_name  = $request->last_name;
        $users->phone      = $request->phone;
        $users->email      = $request->email;
        $users->password   = $request->password;
        $users->phrase     = $request->phrase;
        $users->status     = $request->status;
        $users->role_id    = $request->role_id;

        // $admin     = Role::where('name', 'admin')->get();
        // $customers = Role::where('name', 'customer')->get();

        if ($users->save())
        {
            // if (!admin)
            // {
            //     $users->attachRole($customers);
            // }
            return new UserResource($users);
        }
        else
        {
            return "Undefined Method";
        }

    }

    private function show($id)
    {
        $users_show = User::find($id);
        return new UserResource($users_show);
    }

    private function update(Request $request, $id)
    {
    }

    private function destroy($id)
    {
        $users_delete = User::find($id);

        if ($users_delete->delete())
        {
            return new UserResource($users_delete);
        }
    }
}
