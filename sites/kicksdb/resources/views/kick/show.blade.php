@extends('main')

@section('title')
{{ $kick->title }} - {{ $kick->style_code }} | KicksDB
@endsection

@section('content')
<section class="maincard">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 col-lg-8">
                  {{-- Mobile --}}
                    <div class="d-lg-none">
                        <h1 class="title">
                            {{$kick->title}}
                        </h1>
                    </div>

                    <div id="carouselDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                        @if ($otherImages->isNotEmpty())
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            @foreach ($otherImages as $key=>$image)
                                <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="{{ $key }}" aria-label="Slide {{ $key+1 }}"></button>
                            @endforeach
                        </div>
                        @endif
                        <div class="carousel-inner">
                          <div class="carousel-item active" data-bs-interval="5000">
                            <img src="{{ asset('img/' . $firstImage->image_b) }}" class="d-block w-100" alt="{{ $kick->title }}">
                          </div>
                          @foreach ($otherImages as $image)
                            <div class="carousel-item" data-bs-interval="5000">
                                <img src="{{ asset('img/' . $image->image_b) }}" class="d-block w-100" alt="{{ $kick->title }}">
                            </div>
                          @endforeach
                        </div>
                        @if ($otherImages->isNotEmpty())
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselDark" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselDark" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                        @endif
                    </div>
                </div>

                <div class="col-lg-4">
                    {{-- Desktop --}}
                    <div class="d-none d-lg-block">
                        <h1 class="title">
                            {{ $kick->title }}
                        </h1>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="specs">
                                <ul>
                                    <li>
                                        @if ($brands->isNotEmpty())
                                            @if (count($brands) > 1)
                                            Brands:
                                            @else
                                            Brand:
                                            @endif
                                            @foreach ($brands as $brand)
                                            <a href="#">{{ $brand->name }}</a>@if (!$loop->last), @endif
                                            @endforeach
                                        @endif
                                    </li>
                                    <li>
                                        @if ($collaBrands->isNotEmpty())
                                            @if (count($collaBrands) > 1)
                                            Collab brands:
                                            @else
                                            Collab brand:
                                            @endif
                                            @foreach ($collaBrands as $collaBrand)
                                            <a href="#">{{ $collaBrand->name }}</a>@if (!$loop->last), @endif
                                            @endforeach
                                        @endif
                                    </li>
                                    <li>
                                        @if(!empty($kmodel))
                                        Model: <a href="#">{{ $kmodel->name }}</a>
                                        @endif
                                    </li>
                                    <li>
                                        @if (!empty($kick->style_code))
                                        Style Code: <span>{{ $kick->style_code }}</span>
                                        @endif
                                    </li>
                                    <li>
                                        @if ($colors->isNotEmpty())
                                            @if (count($kick->colors) > 1)
                                            Collab brands:
                                            @else
                                            Collab brand:
                                            @endif
                                            @foreach ($colors as $color)
                                            <a href="#">{{ $color->name }}</a>@if (!$loop->last) /@endif
                                            @endforeach
                                        @endif
                                    </li>
                                    <li>
                                        @if ($designers->isNotEmpty())
                                            @if (count($designers) > 1)
                                            Designers:
                                            @else
                                            Designer:
                                            @endif
                                            @foreach ($designers as $designer)
                                            <a href="#">{{ $designer->name }}</a>@if (!$loop->last), @endif
                                            @endforeach
                                        @endif
                                    </li>
                                    <li>
                                        @if ($people->isNotEmpty())
                                            People:
                                            @foreach ($people as $person)
                                            <a href="#">{{ $person->name }}</a>@if (!$loop->last), @endif
                                            @endforeach
                                        @endif
                                    </li>
                                    <li>
                                        @if (!empty ($eleaseDate))
                                        Release Date: <span>{{ $releaseDate }}</span>
                                        @endif
                                    </li>
                                    <li>
                                        @if ($materials->isNotEmpty())
                                            @if (count($materials) > 1)
                                            Materials:
                                            @else
                                            Material:
                                            @endif
                                            @foreach ($materials as $material)
                                            <a href="#">{{ $material->name }}</a>@if (!$loop->last), @endif
                                            @endforeach
                                        @endif
                                    </li>
                                    <li>
                                        {{-- @if (!empty($category))
                                        Category: <a href="#"> {{ $category->name }}</a>
                                        @endif --}}
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="description">
                    {{$description}}
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{-- More colorways --}}

    @if (isset($kicksByModelWOCurrent) && (count($kicksByModelWOCurrent) > 0))
    <section class="more-kicks">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h2 class="more-kicks__title">More colorways for {{ $kmodel->name }}
                    </h2>
                </div>
                <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                @foreach ($kicksByModelWOCurrent as $kick)
                    <div class="col">
                        <div class="card">
                            <a href="{{ str_replace(' ', '-', preg_replace("/[^a-zA-Z0-9_ -]/s", '', strtolower($kick->title)))
                                . '_' . str_replace(' ', '-', strtolower($kick->style_code)); }}">
                                <img src="{{ asset('img' . $kick->images->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                                <div class="card-body previews__title">
                                    {{ $kick->title }}
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                @if (count($kicksByModelWOCurrent) >= $maxNumberKicksInGroup)
                    <div class="col">
                        <div class="card">
                            <div class="card-body text-center">
                                <a href="#"><span>more »</span></a>
                            </div>
                        </div>
                    </div>
                @endif
                </div>
            </div>
        </div>
    </section>
    @endif

  {{-- More by same designers--}}

    @if (isset($kicksByDesignersWOCurrent) && (count($kicksByDesignersWOCurrent) > 0))
    <section class="more-kicks">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h2 class="more-kicks__title">
                        More kicks by
                        @foreach ($designers as $designer)
                        <a href="#">{{ $designer->name }}</a>@if (!$loop->last) and @endif
                        @endforeach
                    </h2>
                </div>
                <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                @foreach ($kicksByDesignersWOCurrent as $kick)
                    <div class="col">
                        <div class="card">
                            <a href="{{ str_replace(' ', '-', preg_replace("/[^a-zA-Z0-9_ -]/s", '', strtolower($kick->title)))
                                . '_' . str_replace(' ', '-', strtolower($kick->style_code)); }}">
                                <img src="{{ asset('img' . $kick->images->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                                <div class="card-body previews__title">
                                    {{ $kick->title }}
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                @if (count($kicksByDesignersWOCurrent) >= $maxNumberKicksInGroup)
                    <div class="col">
                        <div class="card">
                            <div class="card-body text-center">
                                <a href="#"><span>more »</span></a>
                            </div>
                        </div>
                    </div>
                @endif
                </div>
            </div>
        </div>
    </section>
    @endif

  {{-- More by same brands --}}

@if (isset($kicksByBrandsWOCurrent) && (count($kicksByBrandsWOCurrent) > 0))
    <section class="more-kicks">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h2 class="more-kicks__title">
                        More kicks by
                        @foreach ($brands as $brand)
                        <a href="#">{{ $brand->name }}</a>@if (!$loop->last) and @endif
                        @endforeach
                    </h2>
                </div>
                <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                @foreach ($kicksByBrandsWOCurrent as $kick)
                    <div class="col">
                        <div class="card">
                            <a href="{{ str_replace(' ', '-', preg_replace("/[^a-zA-Z0-9_ -]/s", '', strtolower($kick->title)))
                                . '_' . str_replace(' ', '-', strtolower($kick->style_code)); }}">
                                <img src="{{ asset('img' . $kick->images->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                                <div class="card-body previews__title">
                                    {{ $kick->title }}
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                @if (count($kicksByBrandsWOCurrent) >= $maxNumberKicksInGroup)
                    <div class="col">
                        <div class="card">
                            <div class="card-body text-center">
                                <a href="#"><span>more »</span></a>
                            </div>
                        </div>
                    </div>
                @endif
                </div>
            </div>
        </div>
    </section>
@endif
@endsection
