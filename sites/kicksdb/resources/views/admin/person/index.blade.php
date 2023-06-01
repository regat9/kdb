@extends('layouts.admin-main')

@section('content')
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">People</h1>
    </div>

    @if (session('success'))
    <div class="alert alert-success">
        {!! session('success') !!}
    </div>
    @endif

    <a href="{{ route('people.create') }}" class="btn btn-primary" type="submit">+ Add person</a>
    <div class="table-responsive">
      <table class="table table-striped table-sm">
        <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
            @foreach ($people as $person)
          <tr>
            <td>{{ $person->id }}</td>
            <td>
                <a href="{{ route('people.edit', $person) }}">
                    {{ $person->name }}
                </a>
            </td>
            <td>
                <form method="post" action = "{{ route('people.destroy', $person) }}">
                    @csrf
                    @method('delete')
                    <button type="submit" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteModal">delete</button>

                    {{-- <!-- Modal -->
                    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="deleteModalLabel">Do you want to delete person?</h5>
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
  {{ $people->links() }}
@endsection
