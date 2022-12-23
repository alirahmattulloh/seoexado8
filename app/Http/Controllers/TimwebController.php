<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TimwebController extends Controller
{
    public function index() {
        return view('timweb.index');
    }
}
