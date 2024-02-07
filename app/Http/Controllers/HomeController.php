<?php

namespace App\Http\Controllers;

use App\Models\Beverage;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $categories = Category::with(['beverages'=>function($cond){$cond->where('special', '!=', 'yes');}])
        ->orderBy('created_at', 'desc')->take(3)->get();
       
        $special=Beverage::where('special','yes')->get();

        
    
        return view('index', compact('categories', 'special'));

    }
    
    
    
}
