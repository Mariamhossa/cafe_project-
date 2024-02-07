@extends('admin.layout')
@section('title','Beverages')
@section('title2','Beverages')
@section('title3','Edit Beverage')
@section('content')
								<div class="x_content">
									<br />
									<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"enctype="multipart/form-data" method="POST" action="{{route('updateBeverages', [$bev_categ->id])}}">
										@csrf
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="title">Title <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="text" id="title" name="title" value="{{$bev_categ->title}}" class="form-control @error('title') is-invalid @enderror">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="content">Content <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<textarea id="content" name="content" class="form-control @error('content') is-invalid @enderror">{{$bev_categ->content}}</textarea>
											</div>
										</div>
										<div class="item form-group">
											<label for="price" class="col-form-label col-md-3 col-sm-3 label-align">Price <span class="required">*</span></label>
											<div class="col-md-6 col-sm-6 ">
												<input id="price"  type="text" name="price" value="{{$bev_categ->price}}"  class="form-control @error('price') is-invalid @enderror">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Published</label>
											<div class="checkbox">
												<label>
													<input type="checkbox" name="published" value="yes" class="flat" <?php if ($bev_categ->published=='yes') { echo "checked";} ?>>
												</label>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Special</label>
											<div class="checkbox">
												<label>
													<input type="checkbox" name="special" value="yes" class="flat" <?php if ($bev_categ->special=='yes') { echo "checked";} ?>>
												</label>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="image">Image <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="file" id="image" name="image"  class="form-control @error('image') is-invalid @enderror">
											</div>
										</div>
                                       <img  height="100" width="100" src="/images/{{$bev_categ->image}}">
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="title">Category <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<select class="form-control @error('category') is-invalid @enderror" name="category" id="">
													<!-- <option value="{{$bev_categ->category_id}}" selected="">{{$bev_categ->category->category_name}}</option> -->
													@foreach($categories as $category)
													<option  value="{{$category->id}}" <?php  if($category->id == $bev_categ->category_id ){echo "selected";} ?> >{{$category->category_name}}</option>
													@endforeach
												</select>
											</div>
										</div>
										<div class="ln_solid"></div>
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
											<button class="btn btn-primary" type="button" ><a style="color:white;" href="{{route('beverages')}}">Cancel</a></button>
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