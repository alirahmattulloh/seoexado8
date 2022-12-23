<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;

class AuthController extends Controller
{
    public function login() {
        return view('auth.login');
    }

    public function dologin(Request $request) {
        // validasi
        $credentials = $request->validate([
            'username' => 'required',
            'password' => 'required'
        ]);

        if (auth()->attempt($credentials)) {

            // buat ulang session login
            $request->session()->regenerate();

            if (auth()->user()->role_id === '1') {
                // jika user admin
                return redirect()->intended('/admin/dashboard');
            } elseif (auth()->user()->role_id === '2') {
                // jika user timclosing
                return redirect()->intended('/timclosing');
            } elseif (auth()->user()->role_id === '3') {
                // jika user timweb
                return redirect()->intended('/timweb');
            } elseif (auth()->user()->role_id === '4') {
                // jika user timprogram
                return redirect()->intended('/timprogram');
            } elseif (auth()->user()->role_id === '5') {
                // jika user timseo
                return redirect()->intended('/timseo/dashboard');
            } elseif (auth()->user()->role_id === '6') {
                // jika user timpelunasan
                return redirect()->intended('/timpelunasan');
            } else {
                // jika user bukan termasuk role
                return redirect()->intended('/');
            }
        }
        
        // jika email atau password salah
        // kirimkan session error
        return back()->with('error', 'username atau password salah');
    }

    public function logout(Request $request) {
        auth()->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
}