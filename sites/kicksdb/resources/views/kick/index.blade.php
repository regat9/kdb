@extends('main')

@section('title')
All kicks | KicksDB
@endsection

@section('content')
<section class="catalog">
  <div class="container-fluid">
    <div class="row">
      {{-- Desktop filters--}}
        <div class="col-sm-2 col-md-3 col-lg-2 d-none d-md-block">
            <div class="filters">
                <div class="filters__group">
                    <h2>
                        <a href="#" data-bs-toggle="collapse" data-bs-target="#brands" aria-expanded="true" aria-controls="brands">
                         Brands
                        </a>
                    </h2>
                    <p id="texts" style="display:none">Checkbox is CHECKED!</p>
                    <ul class="collapse show" id="brands">
                        @foreach ($brands as $brand)
                        <li>
                            <input class="form-check-input" type="checkbox" value="" id="{{ $brand->name }}">
                            <label class="form-check-label" for="{{ $brand->name }}">
                            {{ $brand->name }}
                            </label>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <div class="filters__group">
                  <h2>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#collab_brands" aria-expanded="true" aria-controls="collab_brands">
                      Collab Brands
                    </a>
                  </h2>
                  <ul class="collapse show" id="collab_brands">
                      @foreach ($collaBrands as $collaBrand)
                      <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ $collaBrand->name }}">
                          <label class="form-check-label" for="{{ $collaBrand->name }}">
                              {{ $collaBrand->name }}
                          </label>
                      </li>
                      @endforeach
                  </ul>
                </div>
                <div class="filters__group">
                  <h2>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#kmodels" aria-expanded="true" aria-controls="kmodels">
                      Models
                    </a>
                  </h2>
                  <ul class="collapse show" id="kmodels">
                      @foreach ($kmodels as $kmodel)
                      <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ $kmodel->name }}">
                          <label class="form-check-label" for="{{ $kmodel->name }}">
                              {{ $kmodel->name }}
                          </label>
                      </li>
                      @endforeach
                  </ul>
                </div>
                <div class="filters__group">
                  <h2>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#designers" aria-expanded="true" aria-controls="designers">
                      Designers
                    </a>
                  </h2>
                  <ul class="collapse" id="designers">
                      @foreach ($designers as $designer)
                      <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ $designer->name }}">
                          <label class="form-check-label" for="{{ $designer->name }}">
                              {{ $designer->name }}
                          </label>
                      </li>
                      @endforeach
                  </ul>
                </div>
                <div class="filters__group">
                  <h2>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#people" aria-expanded="true" aria-controls="people">
                      People
                    </a>
                  </h2>
                  <ul class="collapse" id="people">
                      @foreach ($people as $person)
                      <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ $person->name }}">
                          <label class="form-check-label" for="{{ $person->name }}">
                              {{ $person->name }}
                          </label>
                      </li>
                      @endforeach
                  </ul>
                </div>
                <div class="filters__group">
                    <h2>
                      <a href="#" data-bs-toggle="collapse" data-bs-target="#categories" aria-expanded="true" aria-controls="categories">
                        Categories
                      </a>
                    </h2>
                    <ul class="collapse" id="categories">
                        @foreach ($categories as $category)
                        <li>
                            <input class="form-check-input" type="checkbox" value="" id="{{ $category->name }}">
                            <label class="form-check-label" for="{{ $category->name }}">
                                {{ $category->name }}
                            </label>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
      <div class="col-md-9 col-lg-10">
        <div class="row">
          {{-- <div class="col-md-8 col-lg-8">
            <div class="search-results-info">
              <h1>
                Search results for "<b>Naruto</b>": 159 kicks
              </h1>
            </div>
          </div> --}}
          {{-- Mobile filters --}}
          <div class="d-md-none">
            <button class="mobile-filters-btn" data-bs-toggle="modal" data-bs-target="#filtersModal">
              <span>FILTERS</span>
            </button>
          </div>
          {{-- Mobile filters Modal --}}
          <div class="modal fade modal-left" id="filtersModal" tabindex="-1" aria-labelledby="Filters" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-body">
                  <div class="modal-header">
                    <h2>FILTERS</h2>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="mobile-filters">
                    <div class="filters__group">
                      <h2>
                        <a href="#" data-bs-toggle="collapse" data-bs-target="#brands" aria-expanded="true" aria-controls="brands">
                        Brands
                        </a>
                      </h2>
                      <ul class="collapse show" id="brands">
                        @foreach ($brands as $brand)
                        <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ $brand->name }}">
                          <label class="form-check-label" for="{{ $brand->name }}">
                            {{ $brand->name }}
                          </label>
                        </li>
                        @endforeach
                      </ul>
                    </div>
                    <div class="filters__group">
                      <h2>
                        <a href="#" data-bs-toggle="collapse" data-bs-target="#designers" aria-expanded="true" aria-controls="designers">
                          Designers
                        </a>
                      </h2>
                      <ul class="collapse" id="designers">
                        @foreach ($designers as $designer)
                        <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ $designer->name }}">
                          <label class="form-check-label" for="{{ $designer->name }}">
                            {{ $designer->name }}
                          </label>
                        </li>
                        @endforeach
                      </ul>
                    </div>
                    <div class="filters__group">
                      <h2>
                        <a href="#" data-bs-toggle="collapse" data-bs-target="#people" aria-expanded="true" aria-controls="people">
                          People
                        </a>
                      </h2>
                      <ul class="collapse" id="people">
                        @foreach ($people as $person)
                        <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ $person->name }}">
                          <label class="form-check-label" for="{{ $person->name }}">
                            {{ $person->name }}
                          </label>
                        </li>
                        @endforeach
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="sortby text-end" >
            <span class="d-none d-md-inline">sort by</span>
            <select>
              <option class="sortingg" value="alphabetical" selected>Alphabetical (A - Z)</option>
              <option class="sortingg" value="release-date">Release Date (New - Old)</option>
            </select>
          </div>
        </div>
            <section class="more-kicks">
                <div class="container-fluid">
                    <div class="row">
                        <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                        @foreach ($kicks as $kick)
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
                        </div>
                    </div>
                    <div>
                        @if (method_exists($kicks, 'links'))
                            {{ $kicks->links() }}
                        @endif
                    </div>
                </div>
            </section>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection
