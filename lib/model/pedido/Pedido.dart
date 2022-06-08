import 'package:flutter/material.dart';
import 'package:levv/model/meioDeTransprte/MeioDeTransporte.dart';
import 'package:levv/model/utilizadores/Transportador.dart';

import '../usuario/Usuario.dart';
import 'Item.dart';


class Pedido{

  String _numero;
  DateTime _dataHora;
  double _valor;
  bool _oPedidoEstaDisponivel;
  bool _oPedidoFoiEntregue ;
  bool _oPedidoEstaPago ;

  MeioDeTransporte _meioDeTransporte;

  List<Item> _itens;

  Usuario _usuario;

  Transportador _transportadorDoPedido;

  Pedido(
      this._numero,
      this._dataHora,
      this._valor,
      this._oPedidoEstaDisponivel,
      this._oPedidoFoiEntregue,
      this._oPedidoEstaPago,
      this._meioDeTransporte,
      this._itens,
      this._usuario,
      this._transportadorDoPedido);

  Usuario get usuario => _usuario;

  set usuario(Usuario value) {
    _usuario = value;
  }

  List<Item> get itens => _itens;

  set itens(List<Item> value) {
    _itens = value;
  }

  MeioDeTransporte get meioDeTransporte => _meioDeTransporte;

  set meioDeTransporte(MeioDeTransporte value) {
    _meioDeTransporte = value;
  }

  bool get oPedidoEstaPago => _oPedidoEstaPago;

  set oPedidoEstaPago(bool value) {
    _oPedidoEstaPago = value;
  }

  bool get oPedidoFoiEntregue => _oPedidoFoiEntregue;

  set oPedidoFoiEntregue(bool value) {
    _oPedidoFoiEntregue = value;
  }

  bool get oPedidoEstaDisponivel => _oPedidoEstaDisponivel;

  set oPedidoEstaDisponivel(bool value) {
    _oPedidoEstaDisponivel = value;
  }

  double get valor => _valor;

  set valor(double value) {
    _valor = value;
  }

  DateTime get dataHora => _dataHora;

  set dataHora(DateTime value) {
    _dataHora = value;
  }

  String get numero => _numero;

  set numero(String value) {
    _numero = value;
  }

  Transportador get transportadorDoPedido => _transportadorDoPedido;

  set transportadorDoPedido(Transportador value) {
    _transportadorDoPedido = value;
  }
}