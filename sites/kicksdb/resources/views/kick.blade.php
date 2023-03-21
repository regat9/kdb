@extends('main')

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
                                        @php
                                        $brandsArr = $brands->all();
                                        echo (count($brandsArr) === 1) ? 'Brand:': 'Brands:';
                                        foreach ($brandsArr as $key=>$brand) {
                                            echo ' <a href="#">' . $brand->name . '</a>';
                                            if ($key !== array_key_last($brandsArr)) {
                                                echo ',';
                                            }
                                        }
                                        @endphp
                                    </li>
                                    <li>
                                        @if ($collaBrands->isNotEmpty())
                                        @php
                                        $collaBrandsArr = $collaBrands->all();
                                        echo (count($collaBrandsArr) === 1) ? 'Collab Brand:': 'Collab Brands:';
                                        foreach ($collaBrandsArr as $key=>$collaBrand) {
                                            echo ' <a href="#">' . $collaBrand->name . '</a>';
                                            if ($key !== array_key_last($collaBrandsArr)) {
                                                echo ',';
                                            }
                                        }
                                        @endphp
                                        @endif
                                    </li>
                                    <li>
                                        @if (!empty($kModel))
                                        Model: <a href="#">{{ $kModel->name }}</a>
                                        @endif
                                    </li>
                                    <li>
                                        @if (!empty($kick->style_code))
                                        Style Code: <span>{{ $kick->style_code }}</span>
                                        @endif
                                    </li>
                                    <li>
                                        @if ($colors->isNotEmpty())
                                        Colorway:
                                        @php
                                        $colorsArr = $colors->all();
                                        foreach ($colorsArr as $key=>$color) {
                                            echo '<span>' . $color->name . '</span>';
                                            if ($key !== array_key_last($colorsArr)) {
                                                echo '/';
                                            }
                                        }
                                        @endphp
                                        @endif
                                    </li>
                                    <li>
                                        @if ($designers->isNotEmpty())
                                        @php
                                        $designersArr = $designers->all();
                                        echo (count($designersArr) === 1) ? 'Designer:': 'Designers:';
                                        foreach ($designersArr as $key=>$designer) {
                                            echo ' <a href="#">' . $designer->name . '</a>';
                                            if ($key !== array_key_last($designersArr)) {
                                                echo ',';
                                            }
                                        }
                                        @endphp
                                        @endif
                                    </li>
                                    <li>
                                        @if ($people->isNotEmpty())
                                        People:
                                        @php
                                        $peopleArr = $people->all();
                                        foreach ($peopleArr as $key=>$person) {
                                            echo ' <a href="#">' . $person->name . '</a>';
                                            if ($key !== array_key_last($peopleArr)) {
                                                echo ',';
                                            }
                                        }
                                        @endphp
                                        @endif
                                    </li>
                                    <li>
                                        @if (!empty ($kick->release_date))
                                        Release Date: <span>{{ $kick->release_date }}</span>
                                        @endif
                                    </li>
                                    <li>
                                        @if ($materials->isNotEmpty())
                                        @php
                                        $materialsArr = $materials->all();
                                        echo (count($materialsArr) === 1) ? 'Material:': 'Materials:';
                                        foreach ($materialsArr as $key=>$material) {
                                            echo ' <span>' . $material->name . '</span>';
                                            if ($key !== array_key_last($materialsArr)) {
                                                echo ',';
                                            }
                                        }
                                        @endphp
                                        @endif
                                    </li>
                                    <li>
                                        @if (!empty($category))
                                        Category: <a href="#"> {{ $category->name }}</a>
                                        @endif
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="description">
                    {{$kick->description}}
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{-- More colorways --}}

    @php $kicksCounter = count($kicksByModelWOCurrent); @endphp
    @if ($kicksCounter > 1)
    <section class="more-kicks">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h2 class="more-kicks__title">More colorways for {{ $kModel->name }}</h2>
                </div>
                <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                @foreach ($kicksByModelWOCurrent as $kick)
                    <div class="col">
                        <div class="card">
                            <a href="#">
                                <img src="{{ asset('img' . $kick->getImages->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                                <div class="card-body previews__title">
                                    {{ $kick->title }}
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                @if ($kicksCounter >= $max_number_kicks_in_group)
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

    @php $kicksCounter = count($kicksByDesignersWOCurrent); @endphp
    @if ($kicksCounter > 1)
    <section class="more-kicks">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h2 class="more-kicks__title">
                        @php
                        $designersArr = $designers->all();
                        echo 'More kicks by ';
                        foreach ($designersArr as $key=>$designer) {
                            echo $designer->name;
                            if ($key !== array_key_last($designersArr)) {
                                echo ' and ';
                            }
                        }
                        @endphp
                    </h2>
                </div>
                <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                @foreach ($kicksByDesignersWOCurrent as $kick)
                    <div class="col">
                        <div class="card">
                            <a href="#">
                                <img src="{{ asset('img' . $kick->getImages->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                                <div class="card-body previews__title">
                                    {{ $kick->title }}
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                @if ($kicksCounter >= $max_number_kicks_in_group)
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

@php $kicksCounter = count($kicksByBrandsWOCurrent); @endphp
@if ($kicksCounter > 1)
    <section class="more-kicks">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h2 class="more-kicks__title">
                    @php
                    $brandsArr = $brands->all();
                    echo 'More kicks by ';
                    foreach ($brandsArr as $key=>$brand) {
                        echo $brand->name;
                        if ($key !== array_key_last($brandsArr)) {
                            echo ' and ';
                        }
                    }
                    @endphp
                    </h2>
                </div>
                <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                @foreach ($kicksByBrandsWOCurrent as $kick)
                    <div class="col">
                        <div class="card">
                            <a href="#">
                                <img src="{{ asset('img' . $kick->getImages->first()->image_s) }}" class="card-img-top" alt="{{ $kick->title }}">
                                <div class="card-body previews__title">
                                    {{ $kick->title }}
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                @if ($kicksCounter >= $max_number_kicks_in_group)
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
