@extends('main')

@section('title', "Kicks | Kicks DB")

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
                    {{-- <p id="texts" style="display:none">Checkbox is CHECKED!</p> --}}
                    <ul class="collapse show" id="brands">
                        @foreach ($brands as $brand)
                        <li>
                            <input class="form-check-input" type="checkbox" value="" id="{{ 'brand-' . $brand->id }}"
                            @if (isset($_GET['brand']))  @php if (in_array($brand->id, explode(',', $_GET['brand']))) {echo 'checked';} @endphp @endif>
                            <label class="form-check-label" for="{{ 'brand-' . $brand->id }}">
                            {{ $brand->name }}
                            </label>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <div class="filters__group">
                  <h2>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#collab_brands" aria-expanded="true" aria-controls="collab_brands">
                      Collab brands
                    </a>
                  </h2>
                  <ul class="collapse show" id="collab_brands">
                      @foreach ($collabrands as $collabrand)
                      <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ 'collabrand-' . $collabrand->id }}"
                          @if (isset($_GET['collabrand']))  @php if (in_array($collabrand->id, explode(',', $_GET['collabrand']))) {echo 'checked';} @endphp @endif>
                          <label class="form-check-label" for="{{ 'collabrand-' . $collabrand->id }}">
                              {{ $collabrand->name }}
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
                    <ul class="collapse show" id="people">
                        @foreach ($people as $person)
                        <li>
                            <input class="form-check-input" type="checkbox" value="" id="{{ 'person-' . $person->id }}"
                            @if (isset($_GET['person']))  @php if (in_array($person->id, explode(',', $_GET['person']))) {echo 'checked';} @endphp @endif>
                            <label class="form-check-label" for="{{ 'person-' . $person->id }}">
                                {{ $person->name }}
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
                  <ul class="collapse show" id="designers">
                      @foreach ($designers as $designer)
                      <li>
                          <input class="form-check-input" type="checkbox" value="" id="{{ 'designer-' . $designer->id }}"
                          @if (isset($_GET['designer']))  @php if (in_array($designer->id, explode(',', $_GET['designer']))) {echo 'checked';} @endphp @endif>
                          <label class="form-check-label" for="{{ 'designer-' . $designer->id }}">
                              {{ $designer->name }}
                          </label>
                      </li>
                      @endforeach
                  </ul>
                </div>
                <div class="filters__group">
                    <h2>
                      <a href="#" data-bs-toggle="collapse" data-bs-target="#models" aria-expanded="true" aria-controls="models">
                        Models
                      </a>
                    </h2>
                    <ul class="collapse show" id="models">
                        @foreach ($models as $model)
                        <li>
                            <input class="form-check-input" type="checkbox" value="" id="{{ 'model-' . $model->id }}"
                            @if (isset($_GET['model']))  @php if (in_array($model->id, explode(',', $_GET['model']))) {echo 'checked';} @endphp @endif>
                            <label class="form-check-label" for="{{ 'model-' . $model->id }}">
                                {{ $model->name }}
                            </label>
                        </li>
                        @endforeach
                    </ul>
                  </div>
            </div>
        </div>
      <div class="col-md-9 col-lg-10">
        <div class="row">
          <div class="col-md-8 col-lg-8">
            <div id="search-results-heading" class="search-results-info">
              <h2>
                {{-- Search results for "<b>Naruto</b>": 159 kicks --}}
                {{$heading}}
              </h2>
            </div>
          </div>
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
          <div class="sortby text-end">
            <span class="d-none d-md-inline">sort by</span>
            <select>
              <option class="sorting" value="alphabetical" selected>Alphabetical (A - Z)</option>
              <option class="sorting" value="release-date">Release Date (New - Old)</option>
            </select>
          </div>
        </div>
            <section class="more-kicks">
                <div class="container-fluid">
                    <div class="row">
                      <div id="search-results" class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center">
                      @foreach ($kicks as $kick)
                        <div class="col">
                          <div class="card">
                            <a href="{{ $kick->slug }}">
                              <img src="{{ asset('storage' . $kick->images->where('display_order', 1)->first()->img_s) }}"
                                  class="card-img-top" alt="{{ $kick->title }}">
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
                      {{ $kicks->withQueryString()->links() }}
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

@section('scripts')
<script>

const checkboxes = document.querySelectorAll('input[type=checkbox]');

// Adding change event listener for every checkbox
checkboxes.forEach(function(checkbox) {
  checkbox.addEventListener("change", function() {
    const selectedIds = [];

    // Adding checkbox values to array if checkbox is checked
    checkboxes.forEach(function(checkbox) {
      if (checkbox.checked) {
        selectedIds.push(checkbox.id);
      }
    });

    const brands = [];
    const collabrands = [];
    const people = [];
    const designers = [];
    const models = [];
    let newUrl = '?';

    selectedIds.forEach((current) => {
        if (current.match(/^brand-\d+/)) {
            brands.push(current.replace('brand-', ''));
        } else if (current.match(/^collabrand-\d+/)) {
            collabrands.push(current.replace('collabrand-', ''));
        } else if (current.match(/^person-\d+/)) {
            people.push(current.replace('person-', ''));
        } else if (current.match(/^designer-\d+/)) {
            designers.push(current.replace('designer-', ''));
        } else if (current.match(/^model-\d+/)) {
            models.push(current.replace('model-', ''));
        }
    });

    if (brands.length > 0) {
      brands.sort();
      newUrl += 'brand=' + brands.join(',') + '&';
    }

    if (collabrands.length > 0) {
      collabrands.sort();
      newUrl += 'collabrand=' + collabrands.join(',') + '&';
    }

    if (people.length > 0) {
      people.sort();
      newUrl += 'person=' + people.join(',') + '&';
    }

    if (designers.length > 0) {
      designers.sort();
      newUrl += 'designer=' + designers.join(',') + '&';
    }

    if (models.length > 0) {
      models.sort();
      newUrl += 'model=' + models.join(',') + '&';
    }

    if (/[&?]$/.test(newUrl)) {
      newUrl = newUrl.slice(0, -1);
    }

    if (newUrl == '') {
      newUrl = '/';
    }

    //Putting url into url field
    window.history.pushState({}, '', newUrl);

    //Getting filter results + updating heading & ?title
    fetch('/filtersresult' + newUrl)
      .then(response => {
        if (!response.ok) {
          throw new Error('Request error: ' + response.status);
        }
        return response.json();
      })
      .then(data => {
        document.querySelector('#search-results-heading h2').textContent = data.heading;
        document.getElementById('search-results').innerHTML = data.html;
      })
      .catch(error => {
        console.error('Fetch error:', error);
      });
    
  });
});



</script>
@endsection
