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
              Louis Vuitton x Nike Air Force 1 Mid By Virgil Abloh Graffiti
            </h1>
          </div>

          <div id="carouselDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
              <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active" data-bs-interval="5000">
                <img src="images/image1.jpeg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item" data-bs-interval="5000">
                <img src="images/image2.jpeg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item" data-bs-interval="5000">
                <img src="images/image3.jpeg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item" data-bs-interval="5000">
                <img src="images/image4.jpeg" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselDark" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselDark" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>

        <div class="col-lg-4">
          {{-- Desktop --}}
          <div class="d-none d-lg-block">
            <h1 class="title">
              Louis Vuitton x Nike Air Force 1 Mid By Virgil Abloh Graffiti
            </h1>
          </div>
          <div class="row">
            <div class="col-12">
              <div class="specs">
                Brand: Jordan, Louis Vuitton<br>
                Model: Air Jordan 32<br>
                Style Code: AR4567-900<br>
                Model: Air Jordan 32<br>
                Style Code: AR4567-900<br>
                Brand: Jordan, Louis Vuitton<br>
                Model: Air Jordan 32<br>
                Style Code: AR4567-900<br>
                Model: Air Jordan 32<br>
                Style Code: AR4567-900<br>
                Brand: Jordan, Louis Vuitton<br>
                Model: Air Jordan 32<br>
                Style Code: AR4567-900<br>
                Model: Air Jordan 32<br>
                Style Code: AR4567-900<br>
              </div>
          </div>
        </div>
      </div>
        <div class="col-lg-8">
          <div class="description">
            The Louis Vuitton x Nike Air Force 1 Mid By Virgil Abloh Graffiti is a luxurious and stylish sneaker collaboration between the two renowned brands. It features the iconic Air Force 1 silhouette, with the signature Virgil Abloh "OFF WHITE" design. The shoe is designed in a mid-cut style with a graffiti print throughout the upper. The heel tab also has an embossed Louis Vuitton logo, adding an extra touch of luxury to the shoe. The Louis Vuitton x Nike Air Force 1 Mid By Virgil Abloh Graffiti is the perfect example of high fashion and streetwear colliding.
          </div>
        </div>
      </div>
    </div>
  </section>

{{-- More colorways --}}

  <section class="more-kicks">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <h2 class="more-kicks__title">More colorways</h2>
        </div>
        <div class="row row-cols-3-auto row-cols-sm-4 row-cols-md-5 row-cols-lg-6">
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
  </section>

  {{-- More by same designer/designers--}}

  <section class="more-kicks">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <h2 class="more-kicks__title">
            More kicks by Tinker Hatfield and Virgil Abloh
          </h2>
        </div>
        <div class="row row-cols-3-auto row-cols-sm-4 row-cols-md-5 row-cols-lg-6">
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="images/aj17.jpg" class="card-img-top" alt="Air Jordan 4 Retro 'Midnight Navy'">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro 'Midnight Navy'
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="images/aj12.jpg" class="card-img-top" alt="Public School x Air Jordan 12 Retro 'PSNY'">
                <div class="card-body previews__title">
                  Public School x Air Jordan 12 Retro 'PSNY'
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="images/aj13.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Military Black’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Military Black’
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="images/aj18.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Red Thunder’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Red Thunder’
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="images/aj10.jpg" class="card-img-top" alt="Air Jordan 4 Retro ’Black Cat’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ’Black Cat’
                </div>
              </a>
            </div>
          </div>
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
                <img src="images/aj11.jpg" class="card-img-top" alt="Air Jordan 4 Retro 'Midnight Navy'">
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
                <img src="images/aj1.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Red Thunder’">
                <div class="card-body previews__title">
                  Air Jordan 4 Retro ‘Red Thunder’
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="images/aj3.jpg" class="card-img-top" alt="Public School x Air Jordan 12 Retro 'PSNY'">
                <div class="card-body previews__title">
                  Public School x Air Jordan 12 Retro 'PSNY'
                </div>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <a href="#">
                <img src="images/aj7.jpg" class="card-img-top" alt="Air Jordan 4 Retro ‘Military Black’">
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
