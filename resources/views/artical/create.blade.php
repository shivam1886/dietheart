@extends('layouts.loggedIn')

@section('title') {{__('Add Fact')}} @endsection

@section('content')

<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">{{__('Add Fact')}}</h3>
    </div>
</div>
<br/>
        <form class="form" action="{{route('store.artical')}}" method="POST" enctype="multipart/form-data">
            @csrf
        <div class="row">
            <div class="col-md-6 col-offset-md-3">
                <div class="card">
                    <div class="card-body">
                            <div class="form-group">
                                <input type="text" class="form-control" name="title" value="{{ old('title')}}" placeholder="{{__('Title')}}" required/>
                                @error('title')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="form-group">
                               <textarea rows="7" class="form-control" name="description" class="form-control">{{ old('description')}}</textarea>
                                @error('description')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="is_active" value="1" @if(old('is_active')) checked @endif/> Active
                                </label>
                            </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-offset-md-3">
                <div class="card">
                    <div class="card-body">
                           <div class="img-preview">
                               <img class="image-preview" src="{{asset('public/images/system/image-not-available.png')}}" width="100%" height="200px" style="object-fit: contain"/>
                            </div>
                            <br/>
                            <div class="form-group">
                                <input type="file" class="form-control" name="image" accept="image/*" placeholder="{{__('Image')}}"/>
                                @error('image')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                 <input type="submit" value="{{__('Update')}}" class="btn btn-primary float-right"/>
            </div>
        </div>
        </form>


@include('components.backBtn')
@endsection
@push('js')
 <script>
        //Image Preview
        $('input[name="image"]').on('change',function(e){
            tmppath = URL.createObjectURL(event.target.files[0]);
            $('.image-preview').attr('src',tmppath);
        });
 </script>
@endpush