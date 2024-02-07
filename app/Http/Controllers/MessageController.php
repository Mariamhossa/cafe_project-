<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMail;
use App\Models\Notification as ModelsNotification;
use App\Models\User;
use App\Models\Notify;
use App\Notifications\sentMail;
use Illuminate\Support\Facades\Notification;
use Illuminate\Notifications\Notifiable;

use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
  use Notifiable;
    
    public function send(Request $request){
        //validation
        $validation= $request->validate([
            'name' => 'required| string| max:255',
            'email' => 'required| string| email| max:255',
            'message'=>'required'
        ],[
            'required'=>':attribute is required',
            'name.max:255'=>'only 255 letter ',
            'email'=>'wrong email', 

        ]);
        ///insert the message details in database

        $newmsg=new Message();
        $newmsg->name=$request->name;
        $newmsg->email=$request->email;
        $newmsg->message=$request->message;
        $newmsg->save();

        /////send message to admin
        $admin=User::where('role','admin')->get('email');
        Mail::to($admin)->send(new ContactMail($newmsg));


        /////notifications/////
        $admin_id=User::where('role','admin')->get('id');
        Notification::send($admin_id, new sentMail($newmsg));
        return redirect()->back()->with('success','your message is sent');
        
    }


  public function list(){
    $messages=Message::all();

    Auth::user()->unreadNotifications->markAsRead();
    return view('admin.messages',compact('messages'));
  }

  public function show(string  $id){
    $details=Message::findOrFail($id);

    $notification_id=Notify::where('data->msg_id',$id)->update(['read_at'=>now()]);
    
   
    return view('admin.showMessage',compact('details'));
  }

  public function destroy(Request $request) : RedirectResponse{
    $id=$request->id;
    Message::where('id',$id)->delete();
    return redirect('/admin/messages')->with('deleted', 'the message is deleted!');
}



}
