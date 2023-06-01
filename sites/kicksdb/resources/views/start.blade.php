@extends('main')

@section('title', "Kicks | Kicks DB")

@section('content')
    <section class="featured">
      <div class="container-fluid">
        <div class="row">
          <h2>Featured</h2>
        </div>
        <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6">
        @foreach ($featured as $kick)
            <div class="col">
                <div class="card">
                    <a href="kicks/{{ str_replace(' ', '-', preg_replace("/[^a-zA-Z0-9_ -]/s", '', strtolower($kick->title)))
                        . '_' . str_replace(' ', '-', strtolower($kick->style_code)); }}">
                        @isset ($kick->images->first()->image_s)
                        <img src="{{ asset('/storage/' . $kick->images->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                        @endisset
                        <div class="card-body previews__title">
                            {{ $kick->title }}
                        </div>
                    </a>
                </div>
            </div>
        @endforeach
        </div>
      </div>
    </section>

    <section class="last-released">
      <div class="container-fluid">
        <div class="row">
          <h2>Last Released</h2>
        </div>
        <div class="row row-cols-3-auto row-cols-sm-4 row-cols-md-5 row-cols-lg-6">
        @foreach ($lastReleased as $kick)
            <div class="col">
                <div class="card">
                    <a href="kicks/{{ str_replace(' ', '-', preg_replace("/[^a-zA-Z0-9_ -]/s", '', strtolower($kick->title)))
                        . '_' . str_replace(' ', '-', strtolower($kick->style_code)); }}">
                        @isset ($kick->images->first()->image_s)
                        <img src="{{ asset('/storage/' . $kick->images->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                        @endisset
                        <div class="card-body previews__title">
                            {{ $kick->title }}
                        </div>
                    </a>
                </div>
            </div>
        @endforeach
        </div>
      </div>
    </section>

    @if ($brands->isNotEmpty())
    <section class="brands main-list">
      <div class="container-fluid">
        <div class="row">
          <h2>Brands</h2>
          <ul>
            @foreach($brands as $brand)
            <li><a href="#">{{ $brand->name }}</a></li>
            @endforeach
          </ul>
        </div>
      </div>
    </section>
    @endif

    @if ($collaBrands->isNotEmpty())
    <section class="collab-brands main-list">
      <div class="container-fluid">
        <div class="row">
          <h2>Collab brands</h2>
          <ul>
            @foreach($collaBrands as $collaBrand)
            <li><a href="#">{{ $collaBrand->name }}</a></li>
            @endforeach
          </ul>
        </div>
      </div>
    </section>
    @endif

    @if ($designers->isNotEmpty())
    <section class="designers main-list">
      <div class="container-fluid">
        <div class="row">
          <h2>Designers</h2>
          <ul>
            @foreach($designers as $designer)
            <li><a href="#">{{ $designer->name }}</a></li>
            @endforeach
          </ul>
        </div>
      </div>
    </section>
    @endif

    @if ($people->isNotEmpty())
    <section class="people main-list">
      <div class="container-fluid">
        <div class="row">
          <h2>People</h2>
          <ul>
            @foreach($people as $person)
            <li><a href="#">{{ $person->name }}</a></li>
            @endforeach
          </ul>
        </div>
      </div>
    </section>
    @endif
@endsection
