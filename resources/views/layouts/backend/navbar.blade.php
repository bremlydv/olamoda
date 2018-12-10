<header class="main-header" >
  <!-- Logo -->
  <a href="/" class="logo" style="background-color: black;">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <!-- logo for regular state and mobile devices -->
    <span class="" style="color: white;"><b>OLA</b>MODA</span>
  </a>
  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top" style="background-color: black;">
    <!-- Sidebar toggle button-->
    <!-- <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </a> -->

  <div class="pull-right" style="padding-top: 15px; padding-right: 10px;color: white;">
      <a href="{{ route('logout') }}" style="color: inherit;" class=""
         onclick="event.preventDefault();
                       document.getElementById('logout-form').submit();">
         <i class="fa fa-sign-out"></i> Sign Out</a>
      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display:none">
          @csrf
      </form>
  </div>

  </nav>
</header>
