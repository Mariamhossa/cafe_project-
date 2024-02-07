

@extends('admin.layout')
@section('title','Beverages')
@section('title2','Beverages')
@section('title3','Add Beverage')
@section('content')

                        @if(Session::has('success'))
                                    <div class="alert alert-success" role="alert">
                                        {{Session::get('success')}}
                                        @php
                                          Session::forget('success')
                                        @endphp
									</div>
                                    @endif
								<div class="x_content">
									<br />
									<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" enctype="multipart/form-data" method="POST" action="{{route('storeBeverage')}}">
										@csrf
									<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="title">Title <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="text" id="title" name="title" value="{{old('title')}}" class="form-control @error('title') is-invalid @enderror">
											</div>
										</div>
										@error('title')
                                             <div class="alert alert-danger">{{$message}}</div> 
			                                @enderror
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="content">Content <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<textarea id="content" name="content"  class="form-control @error('content') is-invalid @enderror">{{old('content')}}</textarea>
											</div>
										</div>
										@error('content')
                                             <div class="alert alert-danger">{{$message}}</div> 
			                                @enderror
										<div class="item form-group">
											<label for="price" class="col-form-label col-md-3 col-sm-3 label-align">Price <span class="required">*</span></label>
											<div class="col-md-6 col-sm-6 ">
												<input id="price" type="text" name="price" value="{{old('price')}}" class="form-control @error('price') is-invalid @enderror ">
											</div>
										</div>
										@error('price')
                                             <div class="alert alert-danger">{{$message}}</div> 
			                                @enderror
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Published</label>
											<div class="checkbox">
												<label>
													<input type="checkbox" name="published" value="yes" class="flat">
												</label>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Special</label>
											<div class="checkbox">
												<label>
													<input type="checkbox" name="special" value="yes" class="flat">
												</label>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="image">Image <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="file" id="image" name="image" value="{{old('image')}}" class="form-control @error('image') is-invalid @enderror ">
											</div>
										</div>
										@error('image')
                                             <div class="alert alert-danger">{{$message}}</div> 
			                                @enderror

										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="title">Category <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<select  name="category" id="category" value="{{old('category')}}" class="form-control @error('category') is-invalid @enderror ">
													<option value=" ">Select Category</option>
													@foreach($categories as $category)
													<option value="{{$category->id}}">{{$category->category_name}}</option>
													@endforeach
												</select>
											</div>
										</div>
										@error('category')
                                             <div class="alert alert-danger">{{$message}}</div> 
			                                @enderror
										<div class="ln_solid"></div>
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
												<button class="btn btn-primary" type="button" ><a style="color:white;" href="{{route('beverages')}}">Cancel</a></button>
												<button type="submit" class="btn btn-success">Add</button>
											</div>
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- /page content -->

			@endsection