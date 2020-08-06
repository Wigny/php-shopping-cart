<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Compra extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'compras';
    protected $fillable = ['usuario_id', 'produto_id', 'quantidade', 'finalizado'];

    public function setQuantidade($value)
    {
        $this->attributes['quantidade'] = $value ?: 1;
    }

    public function setData($value)
    {
        $this->attributes['data'] = $value ?: time();
    }

    public function setFinalizado($value)
    {
        $this->attributes['finalizado'] = $value ?: false;
    }

    public function produto()
    {
        return $this->belongsTo('App\Produto');
    }

    public function usuario()
    {
        return $this->belongsTo('App\Usuario');
    }
}
