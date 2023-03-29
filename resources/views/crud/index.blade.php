@extends('layouts.master')

@section('content')
<div class="col-md-8 blog-main">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  	@foreach ($crud as $id=> $c)
    <tr>
      <th>{{$id +1}}</th>
      <td>{{$c->name}}</td>
      <td>
      	<a href="{{route('edit', $c->id)}}" class="btn btn-primary"> Edit</a>
      	<a href="{{route('delete', $c->id)}}" class="btn btn-danger"> Delete</a>
      </td>
    </tr>
    @endforeach
  </tbody>
</table>
</div>

@endsection




