@extends('layouts.master')

@section('content')
<div class="col-md-8 blog-main">
<form action="{{route('update', $crud->id)}}" method="POST">
  
	{{ csrf_field() }}
  {{ method_field('put') }}

  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name" value="{{$crud->name}}">
    
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
@endsection