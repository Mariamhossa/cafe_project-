<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rules\Password;


class UserController extends Controller
{
    
    public function showUsers(){
        $users=User::all();
        return view('admin.users',compact('users'));
    }
    public function addUser(){
        return view('admin.adduser');
    }
    public function store(Request $request) : RedirectResponse{
//validation
$validation= $request->validate([
    'name' => 'required| string| max:255',
    'email' => 'required| string| email| max:255| unique:users',
    'password' => 'required| string| min:6| regex:/^(?=.*[a-z])(?=.*[A-Z])/',
    'user_name'=>'required |max:25',
    'role'=>'required|in:admin,user'
],[
    'required'=>':attribute is required',
    'name.max:255'=>'only 255 letter ',
    'email.unique' => 'This email address has already been used.',
    'email'=>'wrong email', 
    'password'=>' at least 6 digit  with at least one upper & lower case letter',
    'user_name'=>' cannot exceed 25 digits',
    

]);


//store
$newuser=new User();
$newuser->name=$request->name;
$newuser->user_name=$request->user_name;
$newuser->email=$request->email;
$newuser->password=$request->password;
$newuser->active=$request->has('active') ? 'yes' : 'no';
$newuser->role=$request->role;

$newuser->save();

$newuser->sendEmailVerificationNotification();

Auth::login($newuser);



return redirect()->back()->with('success','the user is added succfully ');
    }
    public function edit(string $id){
        $user=User::findOrFail($id);
        
        return view('admin.editUser',compact('user'));   
    }
public function update(string $id, Request $request) : RedirectResponse{
    //validation 
    $validation= $request->validate([
        'name' => 'required| string| max:255',
        'email' => 'required| string| email| max:255',
        'password' => 'required| string| min:6| regex:/^(?=.*[a-z])(?=.*[A-Z])/',
        'user_name'=>'required |max:25| regex:/^(?=.*[0-9])/',
        'role'=>'required|in:admin,user'
    ],[
        'required'=>':attribute is required',
        'name.max:255'=>'only 255 letter ',
        
        'email'=>'wrong email', 
        'password'=>' at least 6 digit  with at least one upper & lower case letter',
        'user_name'=>' cannot exceed 25 digits and should contain numbers',]);

//update
User::where('id',$id)->update([
    'name'=>$request->name,
    'user_name'=>$request->user_name,
    'email'=>$request->email,
    'active'=>$request->has('active') ? 'yes' : 'no',
    'password'=>$request->password,
    'role'=>$request->role,
    
]);
return redirect('/admin/users')->with('success', 'The user data is updated successfully!');

}

public function destroy(Request $request){
    $id=$request->id;
  User::where('id',$id)->delete();
  return redirect('/admin/users')->with('delete', 'The user is deleted');
}

public function adminLogout(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/home');
    }
   
}
