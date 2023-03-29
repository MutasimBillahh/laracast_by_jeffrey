@extends('layouts.master')

@section('content')
<div class="col-md-8 blog-main">
<form action="/store" method="POST">

	{{ csrf_field() }}
	
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" name="name">
    
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
@endsection