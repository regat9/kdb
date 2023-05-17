<?php

namespace Database\Factories;

use App\Models\Kmodel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Kick>
 */
class KickFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => fake()->randomElement(BrandFactory::BRANDS)
                . ' '
                . ucwords(fake()->words(3, true)),
            'style_code' => fake()->bothify('********'),
            'description' => fake()->text(),
            'release_date' => fake()->date(),
            'kmodel_id' => rand(0, 1) ? Kmodel::factory()->create() : null,
        ];
    }
}
