<?php

namespace App\Http\Controllers;

use App\Models\Beverage;
use App\Models\Category;
use Illuminate\Http\Request;
use App\trait\common;
class BeverageController extends Controller
{
    use common;
    public function create(){
        $categories=Category::all();
        return view('admin.addBeverage', compact('categories'));
    }
    public function store(Request $request){
        ///validation
        $validation=$request->validate([
        'title' => 'required|max:255',
        'content' => 'required',
        'category'=>'required',
        'price'=>'required',
        'image' => 'required|mimes:png,jpg,jpeg',
        ],[
            'required'=>':attribute is required',
            'image'=>'it must be png,jpg or jpeg ',
        ]);
        ///insert
           $newbev=new Beverage();
           $newbev->title=$request->title;
           $newbev->content=$request->content;
           $newbev->price=$request->price;
           $newbev->published=$request->has('published') ? 'yes' : 'no';
           $newbev->special=$request->has('special') ? 'yes' : 'no';
           $newbev->category_id=$request->category;
          
          $newbev->image=$this->uploadImage($request->image,'images');
          $newbev->save();
          return redirect()->back()->with('success','the beverage is added successfuly');
    }

    public function show(){
        $beverages=Beverage::all();
        
        return view('admin.beverages', compact('beverages'));
    }

    public function edit(string  $id){
        $bev_categ=Beverage::with('category')->find($id);
        $categories=Category::all();
        return view('admin.editBeverage',['bev_categ'=>$bev_categ,'categories'=>$categories]);
        //$bev_categ->category->category_name;
        
        //response()->json($bev_categ);
    }
    public function update(Request $request, string $id){
        $validation1=$request->validate([
            'title' => 'required|max:255',
            'content' => 'required',
            'category'=>'required',
            'price'=>'required',
            ],[
                'required'=>':attribute is required',
            ]);

        Beverage::where('id', $id)->update([
            'title'=>$request->title,
            'content'=>$request->content,
            'price'=>$request->price,
            'published'=>$request->has('published') ? 'yes' : 'no',
            'special'=>$request->has('special') ? 'yes' : 'no',
            'category_id'=>$request->category,
                 
        ]); if($request->has('image')){
            $validation2=$request->validate([
                'image' => 'mimes:png,jpg,jpeg',
                ],[
                    'image'=>'it must be png,jpg or jpeg ',
                ]);
            Beverage::where('id', $id)->update([
                'image'=>$this->uploadImage($request->image,'images')      
        ]);
    }
   
    return redirect('/admin/beverages')->with('success', 'updated successfully!');      
}
    public function destroy(Request $request){
        $id=$request->id;
        Beverage::where('id',$id)->delete();
        return redirect('/admin/beverages')->with('deleted', 'the beverage is deleted!');
    }
}
