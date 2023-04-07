@extends('layouts.admin-main')

@section('content')
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">{{ isset($kick) ? 'Edit kick': '+ Add kick'}}</h1>
    </div>

    <form action="{{ isset($kick) ? route('kicks.update', $kick) : route('kicks.store') }}" method="post" enctype="multipart/form-data">
        @csrf
        @isset($kick)
            @method('put')
        @endisset
        <div class="form-group col-5 mb-3">
            <input type="text" class="form-control form-control-lg" name="title" placeholder="Title" value="{{ old('title', isset($kick) ? $kick->title : null) }}">
        </div>
        @error('title')
        <div class="alert alert-danger">{{ $message }}</div>
        @enderror
        <div class="row d-flex">
            <div class="form-group col-4 mb-3">
                <select multiple class="form-control form-control-lg" id="brands" name="brands[]">
                    @isset($kick)
                        @php $kbrands = $kick->brands; @endphp
                    @endisset
                    @foreach ($brands as $brand)
                    <option value="{{ $brand->id }}"
                        @isset($kick)
                            @if ($kbrands->contains($brand)) selected @endif
                        @endisset
                        >{{ $brand->name }}
                    </option>
                    @endforeach
                </select>
            </div>
            @error('brands')
            <div class="alert alert-danger">{{ $message }}</div>
            @enderror
            <div class="form-group col-4 mb-3">
                <select multiple class="form-control form-control-lg" id="collabrands" name="collabrands[]">
                    @isset($kick)
                        @php $kcollabrands = $kick->collabrands; @endphp
                    @endisset
                    @foreach ($collabrands as $collabrand)
                    <option value="{{ $collabrand->id }}"
                        @isset($kick)
                            @if ($kcollabrands->contains($collabrand)) selected @endif
                        @endisset
                        >{{ $collabrand->name }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="form-group col-4 mb-3">
                <select multiple class="form-control form-control-lg" id="people" name="people[]">
                    @isset($kick)
                        @php $kpeople = $kick->people; @endphp
                    @endisset
                    @foreach ($people as $person)
                    <option value="{{ $person->id }}"
                        @isset($kick)
                            @if ($kpeople->contains($person)) selected @endif
                        @endisset
                        >{{ $person->name }}
                    </option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="row d-flex">
            <div class="form-group col-4 mb-3">
                <select multiple class="form-control form-control-lg" id="designers" name="designers[]">
                    @isset($kick)
                        @php $kdesigners = $kick->designers; @endphp
                    @endisset
                    @foreach ($designers as $designer)
                    <option value="{{ $designer->id }}"
                        @isset($kick)
                            @if ($kdesigners->contains($designer)) selected @endif
                        @endisset
                        >{{ $designer->name }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="form-group col-4 mb-3">
                <select multiple class="form-control form-control-lg" id="kmodel_id" name="kmodel_id">
                    @isset($kick->kmodel)
                        @php $kickmodel = $kick->kmodel; @endphp
                    @endisset
                    @foreach ($kmodels as $kmodel)
                    <option value="{{ $kmodel->id }}"
                        @isset($kick->kmodel)
                            @if ($kickmodel->id === $kmodel->id) selected @endif
                        @endisset
                        >{{ $kmodel->name }}
                    </option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="row d-flex">
            <div class="form-group col-5 mb-3">
                <input type="text" class="form-control form-control-lg" name="style_code" placeholder="Style Code" @isset($kick) value="{{ $kick->style_code }}@endisset">
            </div>
            <div class="form-group col-5 mb-3">
                <input type="text" class="form-control form-control-lg" name="release_date" placeholder="YYYY-MM-DD" @isset($kick) value="{{ $kick->release_date }}@endisset">
            </div>
        </div>
        <div class="form-group mb-3">
            <textarea class="form-control form-control-lg" name="description" placeholder="Description">@isset($kick){{ $kick->description }}@endisset</textarea>
        </div>

        <div class="form-group mb-3">
            <label class="form-label" for="uploadimages">Upload</label>
            <input type="file" class="form-control" name="images[]" id="uploadimages" multiple onchange="preview()" >
        </div>

        <div class="d-flex">
            @isset($kick)
                @php $kimages = $kick->images; @endphp
                @foreach ($kimages as $kimage)
                    <img  src="{{ asset('img' . $kimage->image_b) }}" class="img-fluid" width="100">
                @endforeach
            @endisset
        </div>
        <div class="form-group mt-5 mb-5">
            <input type="submit" class="btn btn-primary btn-lg" value="Save">
            <a href="{{ route('kicks.index') }}" id="cancel" name="cancel" class="btn btn-default">Cancel</button>
        </div>
    </form>
</main>
@endsection
