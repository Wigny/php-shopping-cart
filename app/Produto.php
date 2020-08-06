<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Produto extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'produtos';
    protected $fillable = ['produto', 'descricao', 'valor', 'imagem', 'estoque'];

    public function setEstoqueAttribute($value)
    {
        $this->attributes['estoque'] = $value !== null ? $value : 0;
    }

    public function setImagemAttribute($value)
    {
        $this->attributes['imagem'] = $value ?: '/images/404.jpg';
    }

    public function compras()
    {
        return $this->hasMany('App\Compra');
    }
}
