<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RedirectController extends Controller
{
    public function cek() {
        if (auth()->user()->role_id === '1') {
            return redirect('/admin/dashboard');
        } elseif (auth()->user()->role_id === '2') {
            return redirect('/timclosing');
        } elseif (auth()->user()->role_id === '3') {
            return redirect('/timweb');
        } elseif (auth()->user()->role_id === '4') {
            return redirect('/timprogram');
        } elseif (auth()->user()->role_id === '5') {
            return redirect('/timseo/dashboard');
        } elseif (auth()->user()->role_id === '6') {
            return redirect('/timpelunasan');
        } else {
            return redirect('/');
        }
    }
}