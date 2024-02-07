
@extends('admin.layout')
@section('title','users')
@section('title2','users')
@section('title3','List of users')
@section('content')

@if(Session::has('success'))
                                    <div class="alert alert-success" role="alert">
                                        {{Session::get('success')}}
                                        @php
                                          Session::forget('success')
                                        @endphp
									</div>
                                    
                                    @elseif(Session::has('delete'))
                                    <div class="alert alert-danger" role="alert">
                                    {{Session::get('delete')}}
                                        @php
                                          Session::forget('delete')
                                        @endphp
</div>
@endif
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                      <thead>
                        <tr>
                          <th>Registration Date</th>
                          <th>Name</th>
                          <th>Username</th>
                          <th>Email</th>
                          <th>Active</th>
                          <th>Role</th>
                          <th>Edit</th>
                          <th>Delete</th>
                        </tr>
                      </thead>


                      <tbody>
                  @foreach($users as $user)
                        <tr>
                          <td>{{$user->created_at}}</td>
                          <td>{{$user->name}}</td>
                          <td>{{$user->user_name}}</td>
                          <td>{{$user->email}}</td>
                          <td>{{$user->active}}</td>
                          <td>{{$user->role}}</td>
                          <td><a href="editUser/{{$user->id}}"><img src="{{asset('./admin/images/edit.png')}}" alt="Edit"></a></td>
                          <td><form method="post" action="{{route('deleteUser')}}">
                            @csrf
                            @method('DELETE')
                            <input type="hidden" name="id" value="{{$user->id}}">
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