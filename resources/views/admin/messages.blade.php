@extends('admin.layout')
@section('title','Messages')
@section('title2','Messages')
@section('title3','List of Messages')
@section('content')

          @if(Session::has('deleted'))
                                    <div class="alert alert-danger" role="alert">
                                    {{Session::get('deleted')}}
                                        @php
                                          Session::forget('deleted')
                                        @endphp
             @endif
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                      <thead>
                       
                        <tr>
                          <th>Full Name</th>
                          <th>Email</th>
                          <th>Show</th>
                          <th>Delete</th>
                        </tr>
                      </thead>
                      <tbody> 
                        @foreach($messages as $message)
                        <tr>
                          <td>{{$message->name}}</td>
                          <td>{{$message->email}}</td>
                          <td><a href="/admin/messageShow/{{$message->id}}"><img src="./images/show.png" alt="show"></a></td>
                          <td><form method="post" action="{{route('deleteMessage')}}">
                            @csrf
                            @method('DELETE')
                            <input type="hidden" name="id" value="{{$message->id}}">
                            <input  type="submit" class="btn btn-danger" value="Delete">
                            </form></td>
                        </tr>
                       @endforeach
                        
                      </tbody>
                    </table>
                  </div>
                  </div>
              </div>
            </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

      @endsection