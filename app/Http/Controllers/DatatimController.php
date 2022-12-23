<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\Datatim;
use App\Models\Role;
use App\Models\User;
use Yajra\DataTables\Facades\DataTables;
use Validator;
use Illuminate\Support\Facades\DB;

class DatatimController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        if (request()->ajax()) {
            //return datatables()->of(Product::select('*'))
            $datatim = DB::table('users')
                ->join('roles', 'roles.id', '=', 'users.role_id')
                ->select('users.*', 'roles.roles_name')
                ->get();

            return datatables()->of($datatim)
                ->addColumn('action', 'datatim.datatim-action')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        $roles = Role::all();
        return view('datatim.index', compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::all();
        return view('datatim.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {

        $request->validate([
            'nama' => 'required',
            'username' => 'required',
            'password' => 'required',
            'role_id' => 'required',
        ]);

        $datatim = Datatim::create([
            'nama' => $request->nama,
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'role_id' => $request->role_id,
        ]);

        return Response()->json($datatim);
    }

    public function storeEdit(Request $request)
    {
        $datatimId = $request->edit_id;

        $request->validate([
            'edit_nama' => 'required',
            'edit_username' => 'required',
            'edit_password' => 'required',
            'edit_role_id' => 'required',
        ]);

        $datatim = Datatim::updateOrCreate(
            [
                'id' => $datatimId
            ],
            [
                'nama' => $request->edit_nama,
                'username' => $request->edit_username,
                'password' => Hash::make($request->edit_password),
                'role_id' => $request->edit_role_id,
            ]

        );

        return Response()->json($datatim);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $where = array('id' => $request->id);
        $datatim  = Datatim::where($where)->first();

        return Response()->json($datatim);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $datatim = Datatim::where('id', $request->id)->delete();

        return Response()->json($datatim);
    }
}
