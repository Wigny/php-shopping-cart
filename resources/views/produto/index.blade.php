@extends('layouts.dashboard')

@section('title', 'Produtos')

@section('content')

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1>PHP Shopping Cart</h1>
      <p class="lead text-muted">Uma loja de produtos diversos!</p>
      <a type="button" class="btn btn-sm btn-outline-secondary" href="{{ route('produtos.create') }}">Anunciar produto</a>
    </div>
  </section>

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
        @foreach($produtos as $produto)
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img src="{{$produto->imagem}}" alt="" width="348px" height="300px">
            <div class="card-body">
              <h3>{{$produto->descricao}}</h3>
              <h4>R$ {{$produto->valor}}</h4>
              <p class="card-text">Em estoque: {{$produto->estoque}}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="{{ route('produtos.edit', $produto->id) }}"><button type="button" class="btn btn-sm btn-outline-secondary">Editar</button></a>
                  <a href="{{ route('produtos.delete', $produto->id) }}"><button type="button" class="btn btn-sm btn-outline-secondary">Excluir</button></a>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        @endforeach
      </div>

    </div>
  </div>

</main>

@endsection