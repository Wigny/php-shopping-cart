<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', fn () => view('welcome'));
Route::get('/sobre', fn () => view('sobre'));

Route::get('/produtos/{produto}/delete', 'ProdutoController@delete')->name('produtos.delete');
Route::get('/usuarios/{usuario}/delete', 'UsuarioController@delete')->name('usuarios.delete');

Route::resource('/produtos', 'ProdutoController');
Route::resource('/usuarios', 'UsuarioController');
Route::resource('/usuarios/{usuario}/carrinho', 'CarrinhoController');
Route::resource('/usuarios/{usuario}/compra', 'CompraController');

Auth::routes();

Route::get('/home', 'HomeController@index')->middleware('auth')->name('home');
