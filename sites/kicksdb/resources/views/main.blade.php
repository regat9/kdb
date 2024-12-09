<!doctype html>
<html lang="en">
<head>
    @include('layouts.head')
</head>
<body>
<header class="header">
    @include('layouts.header')
</header>

@yield('content')

<footer class="footer">
    @include('layouts.footer')
</footer>

@yield('scripts')
