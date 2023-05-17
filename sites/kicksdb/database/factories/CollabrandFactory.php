<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Collabrand>
 */
class CollabrandFactory extends Factory
{
    const COLLABRANDS = ['H&M', 'Sony', 'A Ma Maniere', 'Marvel', 'Undefeated'];

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->unique()->randomElement(self::COLLABRANDS),
        ];
    }
}
