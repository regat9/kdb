<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Brand;
use App\Models\Collabrand;
use App\Models\Person;
use App\Models\Designer;
use App\Models\Kmodel;

class IndexKicks extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'index:kicks';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Index kicks ids into JSON files';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $brands = Brand::all()->sortBy('name');                         
        $collabrands = Collabrand::all()->sortBy('name');
        $people = Person::all()->sortBy('name');
        $designers = Designer::all()->sortBy('name');
        $models = Kmodel::all()->sortBy('name');

        //Indexes path
        $indexPath = storage_path('indexes/');

        if (!file_exists($indexPath)) {
            mkdir($indexPath, 0755, true);
        }

        //Brands
        foreach ($brands as $brand) {
            $kicksByBrandsIds = $brand->kicks->pluck('id')->toArray();
            file_put_contents($indexPath . 'brand-' . $brand->id . '-index.json', json_encode($kicksByBrandsIds));
        }

        //Collabrands
        foreach ($collabrands as $collabrand) {
            $kicksByCollabrandsIds = $collabrand->kicks->pluck('id')->toArray();
            file_put_contents($indexPath . 'collabrand-' . $collabrand->id . '-index.json', json_encode($kicksByCollabrandsIds));
        }

        //People
        foreach ($people as $person) {
            $kicksByPeopleIds = $person->kicks->pluck('id')->toArray();
            file_put_contents($indexPath . 'person-' . $person->id . '-index.json', json_encode($kicksByPeopleIds));
        }

        //Designers
        foreach ($designers as $designer) {
            $kicksByDesignersIds = $designer->kicks->pluck('id')->toArray();
            file_put_contents($indexPath . 'designer-' . $designer->id . '-index.json', json_encode($kicksByDesignersIds));
        }

        //Models / Silhouettes
        foreach ($models as $model) {
            $kicksByModelsIds = $model->kicks->pluck('id')->toArray();
            file_put_contents($indexPath . 'model-' . $model->id . '-index.json', json_encode($kicksByModelsIds));
        }
        
        $this->info('Kicks indexed successfully.');
    }
}
