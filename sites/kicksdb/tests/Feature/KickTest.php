<?php

namespace Tests\Feature;

use App\Models\Kick;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Str;
use Tests\TestCase;

class KickTest extends TestCase
{
    use RefreshDatabase;

    private Kick $kick;
    private $kicks;

    protected function setUp(): void
    {
        parent::setUp();

        $this->kick = Kick::factory()->create();
        $this->kicks = Kick::factory(5)->create();

    }

    /**
     *
     */
    public function test_kick_index()
    {
        $this->assertCount (5, $this->kicks);

        // $response = $this->get('/kicks');
        // $response->assertStatus(200);


        // dd($kicks);

        // $kicks = Kick::factory(3)->create(['title' => Str::random(3)]);
        // dd($kicks);

    //    var_dump($kicks);
    }

    public function test_create_kick_succesful()
    {
        $response = $this->post('/admin/kicks', [
            'title' => 'KICK123'
        ]);

        $response->assertStatus(302);
        $response->assertRedirect('/admin/kicks');
    }



    /**
     * A basic feature test example.
     */
    public function test_example(): void
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }
}
