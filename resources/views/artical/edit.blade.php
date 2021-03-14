@extends('layouts.loggedIn')

@section('title') {{__('Update Fact')}} - {{$artical->title}} @endsection

@section('content')


<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">{{__('Update Fact')}} <!-- <button class="btn btn-danger btn-dlt">{{__('Delete')}}</button> --></h1>
    </div>
</div>
<br/>
@include('components.alert')
        <form class="form" action="{{route('update.artical',$artical->id)}}" method="POST" enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
        <div class="row">
            <div class="col-md-6 col-offset-md-3">
                <div class="card">
                    <div class="card-body">
                            <div class="form-group">
                                <input type="text" class="form-control" name="title" value="{{$artical->title}}" placeholder="{{__('Title')}}" required/>
                                @error('title')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="form-group">
                               <textarea rows="7" class="form-control" name="description" class="form-control">{{$artical->description ?? old('description')}}</textarea>
                                @error('description')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="is_active" value="1" @if($artical->is_active) checked @endif/> Active
                                </label>
                            </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-offset-md-3">
                <div class="card">
                    <div class="card-body">
                           <div class="img-preview">
                               <img class="image-preview" src="{{$artical->image}}" width="100%" height="200px" style="object-fit: contain"/>
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

         <!-- Modal -->
 <div class="modal fade" id="deleteModal" role="dialog">
    <div class="modal-dialog modal-md">
        <form class="form" action="{{route('delete.artical')}}" method="POST">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">{{__('Delete Fact')}}</h4>
        </div>
        <div class="modal-body">
                @csrf
                {{ method_field('DELETE') }}
                 <input type="hidden" name="id" value="{{$artical->id}}">
                 <p>{{__('Are you sure want to delete this fact?')}}</p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">{{__('Cancel')}}</button>
          <input type="submit" class="btn btn-danger" value="{{__('Delete')}}" />
        </div>
      </div>
    </form>
    </div>
  </div>
</div>

@include('components.backBtn')
@endsection
@push('js')
 <script>
        //Image Preview
        $('input[name="image"]').on('change',function(e){
            tmppath = URL.createObjectURL(event.target.files[0]);
            $('.image-preview').attr('src',tmppath);
        });
        $('.btn-dlt').on('click',function(e){
            e.preventDefault();
            $('#deleteModal').modal('show');
        });
 </script>
@endpush