@extends('layouts.master')

@section('content')

<div class="col-md-8 blog-main">
		<h1>Sign In</h1>
	<form action="/login" method="POST">
		{{ csrf_field() }}


		<div class="form-group">
			<label for="title">Email</label>
			<input type="email" class="form-control" id="email" name="email" required>
		</div>

		<div class="form-group">
			<label for="title">Password</label>
			<input type="password" class="form-control" id="password" name="password" required>
		</div>



			<div class="form-group">
			<button type="submit" class="btn btn-primary">Log In</button>
		</div>


			@include('layouts.errors')
</form>
</div>
@endsection
