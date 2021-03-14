<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;

    
    public function createBlog($data)
    {

        $this->user_id = auth()->user()->id;
        $this->title = $data['title'];
        $this->description = $data['description'];
        $this->category = $data['category'];
        $this->save();
        return 1;
    }
}
