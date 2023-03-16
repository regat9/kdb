<!doctype html>
<html lang="en">
    @include('head')

<body>
    @include('header')

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
                <img src="img{{ $firstImage->image_b }}" class="d-block w-100" alt="{{ $kick->title }}">
              </div>
              @foreach ($otherImages as $image)
                <div class="carousel-item" data-bs-interval="5000">
                    <img src="img{{ $image->image_b }}" class="d-block w-100" alt="{{ $kick->title }}">
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
    @if ($kicksByModel->count() > 1)
    <section class="more-kicks">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <h2 class="more-kicks__title">{{ $kModel->name }} more colorways</h2>
          </div>
          <div class="row row-cols-3-auto row-cols-sm-4 row-cols-md-5 row-cols-lg-6">
              @foreach ($kicksByModel as $mKick)
                  @if ($mKick->id === $kick->id)
                      @continue
                  @endif
                      @foreach ($mKick->getImages as $mImage)
                      <div class="col">
                          <div class="card">
                              <a href="#">
                                  <img src="img/{{ $mImage->image_s }}" class="card-img-top" alt="{{ $mKick->title }}">
                                  <div class="card-body previews__title">
                                  {{ $mKick->title }}
                                  </div>
                              </a>
                          </div>
                      </div>
                      @endforeach
              @endforeach

          </div>
        </div>
      </div>
    </section>
    @endif

  {{-- More by same designer/designers--}}

  <section class="more-kicks">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <h2 class="more-kicks__title">
            {{-- More kicks by Tinker Hatfield and Virgil Abloh --}}
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
        <div class="row row-cols-3-auto row-cols-sm-4 row-cols-md-5 row-cols-lg-6">

            @foreach ($kicksByDesigners as $dKick)
            @if ($dKick->id === $kick->id)
                @continue
            @endif
                @foreach ($dKick->getImages as $image)
                <div class="col">
                    <div class="card">
                        <a href="#">
                            <img src="img/{{ $image->image_s }}" class="card-img-top" alt="{{ $dKick->title }}">
                            <div class="card-body previews__title">
                            {{ $dKick->title }}
                            </div>
                        </a>
                    </div>
                </div>
                @endforeach
        @endforeach

        </div>
      </div>
    </div>
  </section>

  {{-- More by same brand/brands --}}

  <section class="more-kicks">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <h2 class="more-kicks__title">More kicks by Louis Vuitton and Jordan</h2>
        </div>
        <div class="row row-cols-3-auto row-cols-sm-4 row-cols-md-5 row-cols-lg-6">
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj11.jpg" class="card-img-top" alt="Air Jordan 4 Retro 'Midnight Navy'">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro 'Midnight Navy'
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj10.jpg" class="card-img-top" alt="Public School x Air Jordan 12 Retro 'PSNY'">
                <div class="card-body previews__title">
                  Public School x Air Jordan 12 Retro 'PSNY'
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj12.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Military Black’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Military Black’
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj13.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Red Thunder’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Red Thunder’
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj14.jpg" class="card-img-top" alt="Air Jordan 4 Retro ’Black Cat’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ’Black Cat’
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj17.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Military Black’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Military Black’
                </div>
              </a>
            </div>
          </div>

          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj1.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Red Thunder’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Red Thunder’
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj3.jpg" class="card-img-top" alt="Public School x Air Jordan 12 Retro 'PSNY'">
                <div class="card-body previews__title">
                  Public School x Air Jordan 12 Retro 'PSNY'
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="img/aj7.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Military Black’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Military Black’
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    @include('footer')
  </body>
</html>
