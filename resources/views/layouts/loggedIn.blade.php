<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="shivamyadav8959@gmail.com">
        <meta name="author" content="shivamyadav8959@gmail.com">
        <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
        <link rel="shortcut icon" type="image/jpg" href="{{asset('public/favicon/favicon.ico')}}"/>
        <link rel="apple-touch-icon" sizes="57x57" href="{{asset('public/favicon')}}/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="{{asset('public/favicon')}}/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="{{asset('public/favicon')}}/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="{{asset('public/favicon')}}/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="{{asset('public/favicon')}}/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="{{asset('public/favicon')}}/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="{{asset('public/favicon')}}/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="{{asset('public/favicon')}}/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="{{asset('public/favicon')}}/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="{{asset('public/favicon')}}/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="{{asset('public/favicon')}}/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="{{asset('public/favicon')}}/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="{{asset('public/favicon')}}/favicon-16x16.png">
        <link rel="manifest" href="{{asset('public/favicon')}}/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="{{asset('public/favicon')}}/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <title>@yield('title')</title>

        <!-- Bootstrap Core CSS -->
        <link href="{{asset('public/')}}/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="{{asset('public/')}}/css/startmin.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="{{asset('public/')}}/css/style.css" rel="stylesheet">
        
        <!-- Custom Fonts -->
        <link href="{{asset('public/')}}/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        @stack('css')


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top shadow-sm" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="{{route('home')}}">{{ env('APP_NAME')}}</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> {{auth::user()->name}} <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="{{ route('profile') }}"><i class="fa fa-user fa-fw"></i>{{__('User Profile')}}</a>
                            </li>
                            </li>
                            <li class="divider"></li>
                            <li>
                               <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                              document.getElementById('logout-form').submit();">
                                 {{ __('Logout') }}
                             </a>

                             <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                 @csrf
                             </form>
                            </li>
                        </ul>
                    </li>
                </ul>

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="{{route('home')}}"><i class="fa fa-dashboard fa-fw"></i> {{__('Dashboard')}}</a>
                            </li>
                            <li>
                                <a href="{{route('index.user')}}"><i class="fa fa-users"></i> {{__('Users')}}</a>
                            </li>
                            <li>
                                <a href="{{route('index.food')}}"><i class="fa fa-users"></i> {{__('Foods')}}</a>
                            </li>
                            <li>
                                <a href="{{route('show.artical')}}"><i class="fa fa-users"></i> {{__('Facts')}}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div id="page-wrapper">
                <div class="container-fluid">
                    @section('content')@show
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="{{asset('public/')}}/js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="{{asset('public/')}}/js/bootstrap.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="{{asset('public/')}}/js/startmin.js"></script>

        @stack('js')

    </body>
</html>
