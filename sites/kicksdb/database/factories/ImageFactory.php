<?php

namespace Database\Factories;

use App\Http\Controllers\Admin\KickController;
use App\Models\Kick;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Image>
 */
class ImageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'img_orig' => KickController::ORIGINAL_IMAGES_DIR . '/' . fake()->image(
                storage_path('/app/public' . KickController::ORIGINAL_IMAGES_DIR), 1500, 1000, null, false, true, null, false, 'jpg'),
            'img_b' => KickController::BIG_IMAGES_DIR . '/' . fake()->image(
                storage_path('/app/public' . KickController::BIG_IMAGES_DIR), 1200, 900, null, false, true, null, false, 'jpg'),
            'img_s' => KickController::SMALL_IMAGES_DIR . '/' . fake()->image(
                storage_path('/app/public' . KickController::SMALL_IMAGES_DIR), 300, 200, null, false, true, null, false, 'jpg'),
            'kick_id' => Kick::inRandomOrder()->first()->id,
        ];
    }
}

