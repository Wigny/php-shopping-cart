<div class="sidebar-sticky pt-3">
  <ul class="nav flex-column">
    <li class="nav-item">
      <a class="nav-link" href="#">
        <span data-feather="home"></span>
        Home
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link {{ request()->is('usuarios*') ? 'active' : '' }}" href="{{ route('usuarios.index') }}">
        <span data-feather="users"></span>
        Usuários
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link {{ request()->is('produtos*') ? 'active' : '' }}" href="{{ route('produtos.index') }}">
        <span data-feather="home"></span>
        Produtos
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">
        <span data-feather="shopping-cart"></span>
        Carrinho
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">
        <span data-feather="shopping-bag"></span>
        Compras
      </a>
    </li>
  </ul>
</div>