@extends('layouts.master')

@section('content')

	<div class="col-md-8 blog-main">
		
	<form action="/posts" method="POST">
		{{ csrf_field() }}


		<div class="form-group">
			<label for="title">TITLE</label>
			<input type="text" class="form-control" id="title" name="title">
		</div>

		<div class="form-group">
			<label for="body">BODY</label>
			<textarea id="body" name="body" class="form-control"></textarea>
		</div>

		<div class="form-group">
			<button type="submit" class="btn btn-outline-primary">Publish</button>
		</div>

			@include('layouts.errors')

			</div>
</form>




@endsection