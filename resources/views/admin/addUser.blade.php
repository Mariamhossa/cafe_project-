

@extends('admin.layout')
@section('title','users')
@section('title2','users')
@section('title3','Add user')
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
									<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="POST" action="{{route('store')}}">
                                            @csrf
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="name">Full Name <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="text" id="name" name="name" value="{{old('name')}}" class="form-control @error('name') is-invalid @enderror ">
											</div>
										</div>
										@error('name')
                                             <div class="alert alert-danger">{{$message}}</div> 
			                                @enderror
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="user_name">Username <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="text" id="user_name" name="user_name" value="{{old('user_name')}}" class="form-control @error('user_name') is-invalid @enderror">
											</div>
										</div>
										@error('user_name')
                                     <div class="alert alert-danger">{{$message}}</div> 
			                             @enderror
										<div class="item form-group">
											<label for="email" class="col-form-label col-md-3 col-sm-3 label-align">Email <span class="required">*</span></label>
											<div class="col-md-6 col-sm-6 ">
												<input id="email"  type="email" name="email" value="{{old('email')}}" class="form-control @error('email') is-invalid @enderror">
											</div>
										</div>
										@error('email')
                                     <div class="alert alert-danger">{{$message}}</div> 
			                             @enderror
										 
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Active</label>
											<div class="checkbox">
												<label>
													<input type="checkbox" name="active" value="yes" class="flat">
												</label>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="password">Password <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input type="password" id="password" name="password" value="{{old('password')}}" class="form-control @error('password') is-invalid @enderror">
											</div>
										</div>
										@error('password')
                                     <div class="alert alert-danger">{{$message}}</div> 
			                             @enderror
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="title">Role <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<select class="form-control" name="role" id="role">
                                                 <option value=""> select role</option>
												<option value="user">user</option>
													<option value="admin">admin</option>
													
												</select>
											</div>
										</div>
										@error('role')
                                     <div class="alert alert-danger">{{$message}}</div> 
			                             @enderror
										<div class="ln_solid"></div>
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
												<button class="btn btn-primary" type="button" ><a style="color:white;" href="{{route('users')}}">Cancel</a></button>
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
			@endsection
