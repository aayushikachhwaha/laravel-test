<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Blog;

class BlogTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        $limit = 10;

        for ($i = 0; $i < $limit; $i++) {
            Blog::create([
                'user_id' => 1,
                'title' => $faker->sentence($nbWords = 6, $variableNbWords = true),
                'category' => $faker->sentence($nbWords = 6, $variableNbWords = true),
                'description' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
                'created_at' => \Carbon\Carbon::now(),
                'updated_at' => \Carbon\Carbon::now(),
            ]);
        } 
    }
}
