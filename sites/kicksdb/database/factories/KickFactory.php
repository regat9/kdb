<?php

namespace Database\Factories;

use App\Models\Image;
use App\Models\Kick;
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
            'title' => $title = fake()->randomElement(BrandFactory::BRANDS)
                . ' '
                . ucwords(fake()->words(3, true)),
            'style_code' => $style_code = fake()->bothify('********'),
            'slug' => strtolower(preg_replace("/[^a-zA-Z0-9_ -]/s", '', str_replace(' ', '-', $title . '_' . $style_code))),
            'description' => fake()->text(),
            'release_date' => fake()->date(),
            'kmodel_id' => rand(0, 1) ? Kmodel::factory()->create() : null,
        ];
    }

    public function configure()
    {
        return $this->afterCreating(function (Kick $kick) {
            $kick->images->each(function (Image $image, $index) {
                $image->display_order = $index + 1;
                $image->save();
            });
        });
    }
}
