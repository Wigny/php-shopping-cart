@extends('layouts.dashboard')

@section('title', $produto->produto)
@section('icon', $produto->imagem)
@section('description', $produto->descricao)
@section('image', $produto->imagem)

@section('content')
<div class="container">

  <div class="row">

    <div class="col-lg-3">
      <h1 class="my-4">Shop Name</h1>
      <div class="list-group">
        <a href="#" class="list-group-item active">Category 1</a>
        <a href="#" class="list-group-item">Category 2</a>
        <a href="#" class="list-group-item">Category 3</a>
      </div>
    </div>

    <div class="col-lg-9">

      <div class="card mt-4">
        <img class="card-img-top img-fluid" src="{{ $produto->imagem }}" alt="{{ $produto->produto }}" style="max-height: 500px; object-fit: cover;">
        <div class="card-body">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
            <h3 class="card-title">{{ $produto->produto }}</h3>

            @if($produto->estoque)
            <!-- TODO: usuario -->
            <form action="{{ route('carrinho.store', 1) }}" method="post">
              @csrf
              <input type="number" name="produto" value="{{ $produto->id }}" hidden>

              <div class="input-group mb-3">
                <input type="number" class="form-control" name="quantidade" value="1" min="1" max="{{ $produto->estoque }}" width="60px">
                <div class="input-group-append">
                  <button class="btn btn-primary" type="submit">Adicionar ao carrinho</button>
                </div>
              </div>
            </form>
            @endif
          </div>
          <h4>R${{ $produto->valor }}</h4>
          <p class="card-text">{{ $produto->descricao }}</p>
          <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span> 4.0 stars
        </div>
      </div>

      <div class="card card-outline-secondary my-4">
        <div class="card-header">
          Product Reviews
        </div>
        <div class="card-body">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
          <small class="text-muted">Posted by Anonymous on 3/1/17</small>
          <hr>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
          <small class="text-muted">Posted by Anonymous on 3/1/17</small>
          <hr>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
          <small class="text-muted">Posted by Anonymous on 3/1/17</small>
          <hr>
          <a href="#" class="btn btn-success">Leave a Review</a>
        </div>
      </div>

    </div>

  </div>

</div>
@endsection