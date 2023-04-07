@extends('layouts.admin-main')

@section('content')
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">{{ isset($collabrand) ? 'Edit collab brand': '+ Add collab brand'}}</h1>
    </div>

    <form action="{{ isset($collabrand) ? route('collabrands.update', $collabrand) : route('collabrands.store') }}" method="post">
        @csrf
        @isset($collabrand)
            @method('PUT')
        @endisset
            <div class="form-group col-5 mb-3">
                <input type="text" class="form-control form-control-lg" name="name" placeholder="Name" value="{{ old('name', isset($collabrand) ? $collabrand->name : null) }}">
            </div>
            @error('name')
            <div class="alert alert-danger">{{ $message }}</div>
            @enderror
            <div class="form-group mt-5 mb-5">
                <input type="submit" class="btn btn-primary btn-lg" value="Save">
                <a href="{{ route('collabrands.index') }}" id="cancel" name="cancel" class="btn btn-default">Cancel</button>
            </div>
    </form>
</main>
@endsection
