import 'package:flutter/material.dart';
import 'dart:core';
import 'package:levv/model/bo/endereco/endereco.dart';

class ItemDoPedido {
  late int ordem;
  late Endereco coleta;
  late Endereco entrega;
}

class ItemDoPedidoBuilder
    implements
        ItemDoPedidoEnderecoColeta,
        ItemDoPedidoEnderecoEntrega,
        ItemDoPedidoOrdem,
        ItemDoPedidoBuild {
  final ItemDoPedido _itemDoPedido = ItemDoPedido();

  ItemDoPedidoBuilder._();

  static ItemDoPedidoEnderecoColeta get instance => ItemDoPedidoBuilder._();

  @override
  enderecoColeta(Endereco coleta) {
    _itemDoPedido.coleta = coleta;
    return this;
  }

  @override
  enderecoEntrega(Endereco entrega) {
    _itemDoPedido.entrega = entrega;
    return this;
  }

  @override
  ordemDoItem(int ordem) {
    _itemDoPedido.ordem = ordem;
    return this;
  }

  @override
  ItemDoPedido buid() {
    return _itemDoPedido;
  }
}

abstract class ItemDoPedidoEnderecoColeta {
  ItemDoPedidoEnderecoEntrega enderecoColeta(Endereco coleta);
}

abstract class ItemDoPedidoEnderecoEntrega {
  ItemDoPedidoOrdem enderecoEntrega(Endereco entrega);
}

abstract class ItemDoPedidoOrdem {
  ItemDoPedidoBuilder ordemDoItem(int ordem);
}

abstract class ItemDoPedidoBuild {
  ItemDoPedido buid();
}
