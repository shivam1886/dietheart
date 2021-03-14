@extends('layouts.loggedIn')

@section('title') Dashboard @endsection

@section('content')

<div class="row">
    <div class="col-lg-12">
        <h4 class="page-header">{{__('Hello')}}, {{ auth::user()->name }}</h4>
    </div>
    <!-- /.col-lg-12 -->
</div>
@include('components.alert')
<!-- /.row -->
<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-users fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">{{ DB::table('users')->where('role_id','2')->whereNull('deleted_at')->count()}}</div>
                        <div>{{__('Users')}}</div>
                    </div>
                </div>
            </div>
            <a href="{{route('index.user')}}">
                <div class="panel-footer">
                    <span class="pull-left">{{__('View Details')}}</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-cookie fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">{{ DB::table('foods')->whereNull('deleted_at')->count()}}</div>
                        <div>{{__('Foods')}}</div>
                    </div>
                </div>
            </div>
            <a href="{{route('index.food')}}">
                <div class="panel-footer">
                    <span class="pull-left">{{__('View Details')}}</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    {{-- <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-newspaper fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">{{ DB::table('articals')->whereNull('deleted_at')->count()}}</div>
                        <div>{{__('Facts')}}</div>
                    </div>
                </div>
            </div>
            <a href="{{route('index.artical')}}">
                <div class="panel-footer">
                    <span class="pull-left">{{__('View Details')}}</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div> --}}
</div>
@endsection
