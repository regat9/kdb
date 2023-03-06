<!doctype html>
<html lang="en">
  @include('head')

  <body>
    @include('header')

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
                <ul class="collapse show" id="brands">
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Adidas">
                    <label class="form-check-label" for="Adidas">
                      Adidas
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Asics">
                    <label class="form-check-label" for="Asics">
                      Asics
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Air Jordan" checked>
                    <label class="form-check-label" for="Air Jordan">
                      Air Jordan
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="New Balance">
                    <label class="form-check-label" for="New Balance">
                      New Balance
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Nike">
                    <label class="form-check-label" for="Nike">
                      Nike
                    </label>
                  </li>
                </ul>
              </div>
              <div class="filters__group">
                <h2>
                  <a href="#" data-bs-toggle="collapse" data-bs-target="#designers" aria-expanded="true" aria-controls="designers">
                    Designers
                  </a>
                </h2>
                <ul class="collapse" id="designers">
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Virgil Abloh">
                    <label class="form-check-label" for="Virgil Abloh">
                      Virgil Abloh
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Tinker Hatfield">
                    <label class="form-check-label" for="Tinker Hatfield">
                      Tinker Hatfield
                    </label>
                  </li>
                </ul>
              </div>
              <div class="filters__group">
                <h2>
                  <a href="#" data-bs-toggle="collapse" data-bs-target="#persons" aria-expanded="true" aria-controls="persons">
                    Persons
                  </a>
                </h2>
                <ul class="collapse" id="persons">
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Stephen Curry" checked>
                    <label class="form-check-label" for="Stephen Curry">
                      Stephen Curry
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Kevin Durant">
                    <label class="form-check-label" for="Kevin Durant">
                      Kevin Durant
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="LeBron James">
                    <label class="form-check-label" for="LeBron James">
                      LeBron James
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Damian Lillard">
                    <label class="form-check-label" for="Damian Lillard">
                      Damian Lillard
                    </label>
                  </li>
                  <li>
                    <input class="form-check-input" type="checkbox" value="" id="Zion Williamson">
                    <label class="form-check-label" for="Zion Williamson">
                      Zion Williamson
                    </label>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <div class="col-md-9 col-lg-10">
            <div class="row">
              <div class="col-md-8 col-lg-8">
                <div class="search-results-info">
                  <h1>
                    Search results for "<b>Naruto</b>": 159 kicks
                  </h1>
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
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Adidas">
                              <label class="form-check-label" for="Adidas">
                                Adidas
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Asics">
                              <label class="form-check-label" for="Asics">
                                Asics
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Air Jordan" checked>
                              <label class="form-check-label" for="Air Jordan">
                                Air Jordan
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="New Balance">
                              <label class="form-check-label" for="New Balance">
                                New Balance
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Nike">
                              <label class="form-check-label" for="Nike">
                                Nike
                              </label>
                            </li>
                          </ul>
                        </div>
                        <div class="filters__group">
                          <h2>
                            <a href="#" data-bs-toggle="collapse" data-bs-target="#designers" aria-expanded="true" aria-controls="designers">
                              Designers
                            </a>
                          </h2>
                          <ul class="collapse" id="designers">
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Virgil Abloh">
                              <label class="form-check-label" for="Virgil Abloh">
                                Virgil Abloh
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Tinker Hatfield">
                              <label class="form-check-label" for="Tinker Hatfield">
                                Tinker Hatfield
                              </label>
                            </li>
                          </ul>
                        </div>
                        <div class="filters__group">
                          <h2>
                            <a href="#" data-bs-toggle="collapse" data-bs-target="#persons" aria-expanded="true" aria-controls="persons">
                              People
                            </a>
                          </h2>
                          <ul class="collapse" id="persons">
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Stephen Curry" checked>
                              <label class="form-check-label" for="Stephen Curry">
                                Stephen Curry
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Kevin Durant">
                              <label class="form-check-label" for="Kevin Durant">
                                Kevin Durant
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="LeBron James">
                              <label class="form-check-label" for="LeBron James">
                                LeBron James
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Damian Lillard">
                              <label class="form-check-label" for="Damian Lillard">
                                Damian Lillard
                              </label>
                            </li>
                            <li>
                              <input class="form-check-input" type="checkbox" value="" id="Zion Williamson">
                              <label class="form-check-label" for="Zion Williamson">
                                Zion Williamson
                              </label>
                            </li>
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
                  <option value="alphabetical" selected>Alphabetical (A - Z)</option>
                  <option value="release-date">Release Date (New - Old)</option>
                </select>
              </div>
            </div>

            <div class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6">
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj11.jpg" class="card-img-top previews__image" alt="Air Jordan 4 Retro 'Midnight Navy'">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro 'Midnight Navy'
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj10.jpg" class="card-img-top" alt="Public School x Air Jordan 12 Retro 'PSNY'">
                    <div class="card-body previews__title">
                      Public School x Air Jordan 12 Retro 'PSNY'
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj12.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Military Black’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ‘Military Black’
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj13.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Red Thunder’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ‘Red Thunder’
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj14.jpg" class="card-img-top" alt="Air Jordan 4 Retro ’Black Cat’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ’Black Cat’
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj17.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Military Black’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ‘Military Black’
                    </div>
                  </a>
                </div>
              </div>
    
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj1.jpg" class="card-img-top previews__image" alt="Air Jordan 4 Retro ‘Red Thunder’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ‘Red Thunder’
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj3.jpg" class="card-img-top previews__image" alt="Public School x Air Jordan 12 Retro 'PSNY'">
                    <div class="card-body previews__title">
                      Public School x Air Jordan 12 Retro 'PSNY'
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj7.jpg" class="card-img-top previews__image" alt="Air Jordan 4 Retro ‘Military Black’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ‘Military Black’
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj4.jpg" class="card-img-top previews__image" alt="Air Jordan 4 Retro ‘Red Thunder’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ‘Red Thunder’
                    </div>
                  </a>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <a href="#">
                    <img src="images/aj9.jpg" class="card-img-top previews__image" alt="Air Jordan 4 Retro ’Black Cat’">
                    <div class="card-body previews__title">
                      Air Jordan 4 Retro ’Black Cat’
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>
    
    @include('footer')
  </body>
</html>
