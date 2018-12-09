<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>OLAMODA | Fashion Blog</title>

    <link rel="icon" href="/icons/logo.png">

    <link href='https://fonts.googleapis.com/css?family=Raleway:400,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css">
    <link rel="stylesheet" href="/css/bootstrap4.1.min.css">
    <link rel="stylesheet" href="/css/blog.css">
    <link rel="stylesheet" href="/css/custom.css">
</head>
<body>
    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <!-- <a class="text-muted" href="#">Subscribe</a> -->
          </div>
          <div class="col-4 text-center d-none d-md-block">
            <a class="blog-header-logo text-dark" href="{{ route('blog') }}">OLAMODA</a>
          </div>
          <div class=" col-4 d-flex justify-content-end align-items-center ">
                <form action="{{ route('blog') }}" class="d-none d-md-block">
                    <div class="input-group ">
                      <input type="text" class="form-control input-lg" value="{{ request('term') }}" name="term" placeholder="Search for...">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                      </span>
                    </div>
                </form>
          </div>
        </div>
        <div class="d-sm-none">
          <div class="text-center mb-2">
            <a class="blog-header-logo text-dark" href="{{ route('blog') }}">OLAMODA</a>
          </div>
          <div class="col-12">
                <form action="{{ route('blog') }}">
                    <div class="input-group">
                      <input type="text" class="form-control input-lg" value="{{ request('term') }}" name="term" placeholder="Search for...">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                      </span>
                    </div>
                </form>
          </div>
        </div>
      </header>

      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
        @foreach ($categories as $category)
            @if($category->id != 1)
            <a href="{{ route('category', $category->slug) }}" class="p-2 text-muted">{{ $category->title }}</a>
            @endif
        @endforeach
        </nav>
      </div>
    </div>

    @yield('content')

    <footer class="">
        <div class="container d-flex justify-content-between">
            <div class="">
                <p class="copyright text-center">&copy; 2018 OLAMODA</p>
            </div>
            <div class="">
                <nav>
                    <ul class="social-icons">
                        <li><a href="#" class="i fa fa-facebook"></a></li>
                        <li><a href="#" class="i fa fa-twitter"></a></li>
                        <li><a href="#" class="i fa fa-google-plus"></a></li>
                        <li><a href="#" class="i fa fa-github"></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script>window.jQuery || document.write('<script src="/js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
</body>
</html>
