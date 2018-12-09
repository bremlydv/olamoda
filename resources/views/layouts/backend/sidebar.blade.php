<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="{{ Auth::user()->gravatar() }}" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info" style="color: white;">
        <p>{{ Auth::user()->name }}</p>
        <p>Role - {{ Auth::user()->roles->first()->display_name }}</p>
      </div>
    </div>

    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li >
        <a href="{{ url('/home') }}" style="color: white;">
          <i class="fa fa-home"></i> <span>Dashboard</span>
        </a>
      </li>
      <li >
        <a href="{{ url('/edit-account') }}" style="color: white;">
          <i class="fa fa-user"></i> <span>Profile</span>
        </a>
      </li>
      <li >
        <a href="{{ route('backend.blog.index') }}" style="color: white;">
          <i class="fa fa-pencil"></i> <span>All Posts</span>
        </a>
      </li>

      @if (check_user_permissions(request(), "Categories@index"))
        <li><a href="{{ route('backend.categories.index') }}" style="color: white;"><i class="fa fa-folder"></i> <span>Categories</span></a></li>
      @endif
      @if (check_user_permissions(request(), "Users@index"))
        <li><a href="{{ route('backend.users.index') }}" style="color: white;"><i class="fa fa-users"></i> <span>Users</span></a></li>
      @endif
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>
