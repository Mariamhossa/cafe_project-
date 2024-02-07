<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;


class CategoryController extends Controller
{
    public function create(){
        return view('admin.addCategory');
    }
    public function store(Request $request) : RedirectResponse{
///validation
$validation=$request->validate([
    'category_name'=>'required|max:255'
],[
    'category_name'=>'category name is required'
]);

///adding category
$newcategory= new Category();
$newcategory->category_name=$request->category_name;
$newcategory->save();
return redirect()->back()->with('success','the category is added  ');
    }

    public function show(){
        $categories=Category::all();
        return view('admin.categories',compact('categories'));
    }

    public function edit(string $id){
        $category=Category::findOrFail($id);
        return view('admin.editCategory',compact('category'));
    } 

    public function update(Request $request, string $id){
        //validation
        $validation=$request->validate([
            'category_name'=>'required|max:255'
        ],[
            'category_name'=>'category name is required'
        ]);

        
        //update
Category::where('id',$id)->update([
    'category_name'=>$request->category_name,
]);
return redirect('/admin/category')->with('success', 'updated successfully!');
    }

    public function destroy(Request $request){
        $id=$request->id;
        
        $bev_categ=Category::with('beverages')->find($id);
         if($bev_categ->beverages->count() >0){
            return redirect('/admin/category')->with('prevent', 'the category cannot be deleted because it contains beverages!');
        }else{
        
        Category::where('id',$id)->delete();
       return redirect('/admin/category')->with('deleted', 'the category is deleted!');}
    }
}
