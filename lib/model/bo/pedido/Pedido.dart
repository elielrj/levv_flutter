
import 'package:flutter/material.dart';
import 'package:levv/model/bo/meioDeTransprte/MeioDeTransporte.dart';


import '../usuario/Usuario.dart';
import '../utilizador/Transportador.dart';
import 'ItemDoPedido.dart';


class Pedido{

  String _numero;
  DateTime _dataHora;
  double _valor;
  bool _oPedidoEstaDisponivel;
  bool _oPedidoFoiEntregue ;
  bool _oPedidoEstaPago ;

  MeioDeTransporte _meioDeTransporte;

  List<ItemDoPedido> _itensDoPedido;

  Usuario _usuarioDoPedido;

  Transportador _transportadorDoPedido;


  Pedido(
      this._numero,
      this._dataHora,
      this._valor,
      this._oPedidoEstaDisponivel,
      this._oPedidoFoiEntregue,
      this._oPedidoEstaPago,
      this._meioDeTransporte,
      this._itensDoPedido,
      this._usuarioDoPedido,
      this._transportadorDoPedido);

  Usuario get usuario => _usuarioDoPedido;

  set usuario(Usuario value) {
    _usuarioDoPedido = value;
  }

  List<ItemDoPedido> get itens => _itensDoPedido;

  set itens(List<ItemDoPedido> value) {
    _itensDoPedido = value;
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

  Usuario get usuarioDoPedido => _usuarioDoPedido;

  set usuarioDoPedido(Usuario value) {
    _usuarioDoPedido = value;
  }

  List<ItemDoPedido> get itensDoPedido => _itensDoPedido;

  set itensDoPedido(List<ItemDoPedido> value) {
    _itensDoPedido = value;
  }
}