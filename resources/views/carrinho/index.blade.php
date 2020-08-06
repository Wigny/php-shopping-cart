@extends('layouts.dashboard')

@section('title', 'Carrinho')

@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 ">
  <h1 class="h2">Meu carrinho</h1>
</div>

@if(count($compras))
<div class="table-responsive">
  <form action="{{ route('compra.store', request()->route('usuario')) }}" method="post">
    @csrf
    <table class="table table-striped" id="table">
      <thead>
        <tr>
          <th>
            <input type="checkbox" id="selectAll">
          </th>
          <th>Produto</th>
          <th>Quantidade</th>
          <th>Valor total</th>
        </tr>
      </thead>
      <tbody>
        @foreach($compras as $compra)
        <tr>
          <td class="align-middle">
            <input type="checkbox" name="compras[]" value="{{ $compra->id }}">
          </td>
          <td class="align-middle">{{ $compra->produto->produto }}</td>
          <td class="align-middle">{{ $compra->quantidade }}</td>
          <td class="align-middle">R${{ $compra->quantidade * $compra->produto->valor }}</td>
        </tr>
        @endforeach
      </tbody>
    </table>
    <button type="submit" id="submit" class="btn btn-success" disabled>Finalizar compra</button>
  </form>
</div>
@else
<p class="lead">Nenhum produto adicionado ao carrinho</p>
@endif

<script>
  const submitButton = document.getElementById('submit');
  const table = document.getElementById('table');
  const selectAll = table.querySelector('input[id="selectAll"]');
  const checkboxs = [...table.querySelectorAll('tbody>tr>td>input')];

  const checkAll = check => checkboxs.forEach(i => i.checked = check);

  const disableButton = () => {
    const selecteds = checkboxs.filter(i => i.checked).length;

    submitButton.disabled = !selecteds;
    selectAll.checked = selecteds == checkboxs.length;
  };

  selectAll.addEventListener('change', () => {
    checkAll(selectAll.checked);
    disableButton();
  });

  checkboxs.forEach(i =>
    i.addEventListener('change', disableButton)
  );
</script>

@endsection