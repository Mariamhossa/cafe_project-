@extends('admin.layout')
@section('title','categories')
@section('title2','categories')
@section('title3','Edit category')
@section('content') 
								<div class="x_content">
									<br />
									<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="POST" action="{{route('updateCategory', [$category->id])}}" >
                                       @csrf
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="category_name"> Category name<span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="text" id="category_name" name="category_name" value="{{$category->category_name}}" class="form-control @error('category_name') is-invalid @enderror ">
											</div>
										</div>

										@error('category_name')
                                             <div class="alert alert-danger">{{$message}}</div> 
			                                @enderror

										<div class="ln_solid"></div>
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
											<button class="btn btn-primary" type="button" ><a style="color:white;" href="{{route('users')}}">Cancel</a></button>
												<button type="submit" class="btn btn-success">Update</button>
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