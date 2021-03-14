@extends('layouts.app')

@section('content')
<div class="container">
 @if(\Session::has('success'))
 <div class="alert alert-success">
 {{\Session::get('success')}}
 </div>
 @endif
 <a type="button" href="{{url('blog/create')}}" class="btn btn-primary">Add New Blog</a>
 <br>
 <table class="table table-striped">
 <thead>
 <tr>
 <td>ID</td>
 <td>Title</td>
 <td>Category</td>
 <td>Description</td>
 </tr>
 </thead>
 <tbody>
 @foreach($blogs as $blog)
 <tr>
 <td>{{$blog->id}}</td>
 <td>{{$blog->title}}</td>
 <td>{{$blog->category}}</td>
 <td>{{$blog->description}}</td>
 </tr>
 @endforeach
 </tbody>
 </table>
<div>
@endsection
