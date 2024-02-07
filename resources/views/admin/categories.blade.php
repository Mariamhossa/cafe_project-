

            
 @extends('admin.layout')
@section('title','categories')
@section('title2','categories')
@section('title3','List of categories')
@section('content')    

@if(Session::has('success'))
<div class="alert alert-success" role="alert">
  
            {{Session::get('success')}}
            @php
              Session::forget('success')
            @endphp
									</div>
                  @elseif(Session::has('deleted'))
                                    <div class="alert alert-danger" role="alert">
                                    {{Session::get('deleted')}}
                                        @php
                                          Session::forget('deleted')
                                        @endphp
</div>
@elseif(Session::has('prevent'))
                                    <div class="alert alert-warning" role="alert">
                                    {{Session::get('prevent')}}
                                        @php
                                          Session::forget('prevent')
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
                          <th>Category Name</th>
                          <th>Edit</th>
                          <th>Delete</th>
                        </tr>
                      </thead>


                      <tbody>
                        @foreach($categories as $category)
                        <tr>
                          <td>{{$category->category_name}}</td>
                          <td><a href="editCategory/{{$category->id}}"><img src="{{asset('./admin/images/edit.png')}}" alt="Edit"></a></td>
                          <td><form method="post" action="{{route('deleteCategory')}}">
                            @csrf
                            @method('DELETE')
                            <input type="hidden" name="id" value="{{$category->id}}">
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