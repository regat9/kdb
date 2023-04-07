@extends('layouts.admin-main')

@section('content')
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">Collab Brands</h1>
    </div>

    <a href="{{ route('collabrands.create') }}" class="btn btn-primary" type="submit">+ Add collab brand</a>
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
            @foreach ($collabrands as $collabrand)
          <tr>
            <td>{{ $collabrand->id }}</td>
            <td>
                <a href="{{ route('collabrands.edit', $collabrand) }}">
                    {{ $collabrand->name }}
                </a>
            </td>
            <td>
                <form method="post" action = "{{ route('collabrands.destroy', $collabrand) }}">
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
  {{ $collabrands->links() }}
@endsection
