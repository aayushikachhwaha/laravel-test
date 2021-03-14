<?php

namespace Database\Factories;

use App\Models\Blog;
use Illuminate\Database\Eloquent\Factories\Factory;

class BlogFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = \App\Models\Blog::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
            [
                'user_id' => 1,
                'category' => $this->faker->unique()->text(),
                'title' => $this->faker->category,
                'description' => $this->faker->description,
            ]
        ];
    }
}
