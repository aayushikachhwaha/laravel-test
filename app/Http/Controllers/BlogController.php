<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;

class BlogController extends Controller
{
    //

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Create blog
     */

    public function createBlog()
    {
    return view('blog.create');
    }

    /**
     * save blod details
     */

    public function saveBlog(Request $request)
    {
        $blog = new Blog();
        
        $this->validate($request, [
        'title'=>'required',
        'category'=>'required',
        'description'=> 'required'
        ]);
        
        $blog->createBlog($request->all());
        return redirect('blog/index')->with('success', 'New blog has been created successfully :)'); 
    }

    public function showAllBlogs()
    {
        $blogs = Blog::where('user_id', auth()->user()->id)->get();
    
        return view('blog.index',compact('blogs'));
    }
}
