@extends('admin.layout')
@section('title','Beverages')
@section('title2','Beverages')
@section('title3','List Beverages')
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
                          <th>Beverage Date</th>
                          <th>Title</th>
                          <th>Published</th>
                          <th>Edit</th>
                          <th>Delete</th>
                        </tr>
                      </thead>


                      <tbody>
                        @foreach($beverages as $beverage)
                        <tr>
                          <td>{{$beverage->created_at}}</td>
                          <td>{{$beverage->title}}</td>
                          <td>{{$beverage->published}}</td>
                          <td><a href="editBeverage/{{$beverage->id}}"><img src="./images/edit.png" alt="Edit"></a></td>
                          <td><form method="post" action="{{route('deleteBeverage')}}">
                            @csrf
                            @method('DELETE')
                            <input type="hidden" name="id" value="{{$beverage->id}}">
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