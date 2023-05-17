<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Brand;
use App\Models\Collabrand;
use App\Models\Designer;
use App\Models\Kick;
use App\Models\Person;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $kicks = Kick::factory(30)->create();
        $brands = Brand::factory(8)->create();
        $collabrands = Collabrand::factory(5)->create();
        $designers = Designer::factory(5)->create();
        $people = Person::factory(5)->create();

        $kicks->each(function ($kick) use ($brands, $collabrands, $designers, $people) {
            $kick->brands()->attach($brands->random(rand(1, 2)));
            $kick->collabrands()->attach($collabrands->random(rand(0, 1)));
            $kick->designers()->attach($designers->random(rand(0, 2)));
            $kick->people()->attach($people->random(rand(0, 1)));
        });

        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
