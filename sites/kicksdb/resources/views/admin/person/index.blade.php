@extends('layouts.admin-main')

@section('content')
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">People</h1>
    </div>

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
                    <button type="submit" class="btn btn-danger btn-sm">delete</button>
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
