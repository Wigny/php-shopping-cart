<?php

namespace App\Http\Controllers;

use App\Compra;
use App\Produto;
use Illuminate\Http\Request;

class CompraController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index(int $usuario)
  {
    $compras = Compra::where('usuario_id', $usuario)
      ->where('finalizado', true)
      ->with('produto')
      ->get();

    return view(
      'compra.index',
      array('compras' => $compras),
    );
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  int  $usuario
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(int $usuario, Request $request)
  {
    $compras = Compra::find($request->compras);

    foreach ($compras as $compra) {
      $produto = Produto::find($compra->produto_id);

      if ($compra->quantidade <= $produto->estoque) {
        $compra->update([
          'finalizado' => true
        ]);

        $produto->update([
          'estoque' => $produto->estoque - $compra->quantidade
        ]);
      }
    }

    return $this->index($usuario);
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
  }
}
