@extends('layouts.app')

@section('content')
<div class="container">
@if ($errors->any())
 <div class="alert alert-danger">
 <ul>
 @foreach ($errors->all() as $error)
 <li>{{ $error }}</li>
 @endforeach
 </ul>
 </div><br />
@endif
 <div class="row">
 <form method="post" action="{{url('blog/create')}}">
 <div class="form-group">
 <input type="hidden" value="{{csrf_token()}}" name="_token" />
 <label for="title">Title:</label>
 <input type="text" class="form-control" name="title"/>
 </div>
 <div class="form-group">
 <label for="title">Category/Tags:</label>
 <input type="text" class="form-control" name="category"/>
 </div>
 <div class="form-group">
 <label for="description">Description:</label>
 <textarea cols="10" rows="10" class="form-control" name="description"></textarea>
 </div>
 <button type="submit" class="btn btn-primary">Submit</button>
 </form>
 </div>
</div>
@endsection
