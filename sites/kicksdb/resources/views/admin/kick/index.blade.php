@extends('layouts.admin-main')

@section('content')
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">Kicks</h1>
    </div>

    @if (session('success'))
    <div class="alert alert-success">
        {!! session('success') !!}
    </div>
    @endif

    <a href="{{ route('kicks.create') }}" class="btn btn-primary" type="submit">+ Add kick</a>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
              <thead>
                  <tr>
                      <th scope="col">Id</th>
                      <th scope="col">Title</th>
                      <th scope="col">Style code</th>
                      <th scope="col">Model</th>
                      <th scope="col">Description</th>
                      <th scope="col"></th>
                  </tr>
                </thead>
            <tbody>
                @foreach ($kicks as $kick)
                <tr>
                    <td>{{ $kick->id }}</td>
                    <td>
                        <a href="{{ route('kicks.edit', $kick) }}">
                            {{ $kick->title }}
                        </a>
                    </td>
                    <td>@isset($kick->style_code) {{ $kick->style_code }}@endisset</td>
                    <td>@isset($kick->kmodel->name) {{ $kick->kmodel->name }}@endisset</td>
                    <td>{{ Str::limit($kick->description, 40) }}</td>

                    <td>
                        <form method="post" action = "{{ route('kicks.destroy', $kick) }}">
                            @csrf
                            @method('delete')
                            <button type="sumbit" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                                data-bs-target="#deleteModal">delete</button>

                            <!-- Modal -->
                            {{-- <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="deleteModalLabel">Do you want to delete kick?</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-danger">Yes, delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div> --}}
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
  </main>
  {{ $kicks->links() }}
@endsection
