@extends('admin.layout')
@section('title','Messages')
@section('title2','Messages')
@section('title3','List of Messages')
@section('content')
            <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <h2>Full Name: {{$details->name}}</h2>
                  <br>
                  <h2>Email: {{$details->email}}</h2>
                   <br>
                  <h2>Message Content:</h2>
                  <p>{{$details->message}}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        @endsection