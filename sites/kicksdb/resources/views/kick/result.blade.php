
{{-- <section class="more-kicks">
    <div class="container-fluid">
        <div class="row"> --}}
          {{-- <div id="search-results" class="row row-cols-3 row-cols-sm-4 row-cols-md-5 row-cols-lg-6 align-items-center"> --}}
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
          {{-- </div> --}}
        {{-- </div>
        <div>
        @if (method_exists($kicks, 'links'))
          {{ $kicks->withQueryString()->links() }}
        @endif
        </div>
    </div>
</section> --}}
