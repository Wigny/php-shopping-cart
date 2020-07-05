@extends('layouts.dashboard')

@section('title', 'Compras')

@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 ">
  <h1 class="h2">Minhas Compras</h1>
</div>

@if(count($compras))
<div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Produto</th>
        <th>Quantidade</th>
        <th>Valor Unitário</th>
        <th>Data</th>
      </tr>
    </thead>
    <tbody>
      @foreach($compras as $compra)
      <tr>
        <td class="align-middle">{{ $compra->produto->produto }}</td>
        <td class="align-middle">{{ $compra->quantidade }}</td>
        <td class="align-middle">R${{ $compra->produto->valor }}</td>
        <td class="align-middle">{{ $compra->created_at->format('d/m/Y H:i') }}</td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
@else
<p class="lead">Nenhuma compra realizada</p>
@endif
@endsection