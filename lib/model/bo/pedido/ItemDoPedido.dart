import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/volume.dart';

import 'Peso.dart';

class ItemDoPedido {

  late int _ordem;


  late Endereco _coleta;
  late Endereco _entrega;


  static ItemDoPedido VAZIO = ItemDoPedidoBuilder().create();

  int get ordem => _ordem;

  set ordem(int value) {
    _ordem = value;
  }



  Endereco get coleta => _coleta;

  set coleta(Endereco value) {
    _coleta = value;
  }

  Endereco get entrega => _entrega;

  set entrega(Endereco value) {
    _entrega = value;
  }
}

class  ItemDoPedidoBuilder {
  static final ItemDoPedido _itemDoPedido = ItemDoPedido();

  ItemDoPedidoBuilder() {
    //todo antes de add a lista de itens, verificar a ordem
    _itemDoPedido.ordem = 1;
    _itemDoPedido.coleta = Endereco.VAZIO;
    _itemDoPedido.entrega = Endereco.VAZIO;
  }

  ItemDoPedidoBuilder deOrdem(int ordem) {
    _itemDoPedido.ordem = ordem;
    return this;
  }



  ItemDoPedidoBuilder enderecoDeColeta(Endereco coleta) {
    _itemDoPedido.coleta = coleta;
    return this;
  }

  ItemDoPedidoBuilder enderecoDeEntrega(Endereco entrega) {
    _itemDoPedido.entrega = entrega;
    return this;
  }

  ItemDoPedido create() {
    return _itemDoPedido;
  }
}
