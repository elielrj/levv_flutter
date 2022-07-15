import 'package:flutter/material.dart';
import 'package:levv/model/bo/meioDeTransprte/MeioDeTransporte.dart';
import 'package:levv/model/bo/pedido/volume.dart';
import 'package:levv/model/bo/utilizador/Cliente.dart';

import '../usuario/Usuario.dart';
import '../utilizador/Transportador.dart';
import 'ItemDoPedido.dart';
import 'Peso.dart';

class Pedido {
  late String _numero;
  late DateTime _dataHora;
  late double _valor;
  late Peso _peso;
  late Volume _volume;
  late bool _oPedidoEstaDisponivel;
  late bool _oPedidoFoiEntregue;

  late bool _oPedidoEstaPago;

  late MeioDeTransporte _meioDeTransporte;

  late List<ItemDoPedido> _itensDoPedido = [];

  late Usuario _usuarioDoPedido;

  late Transportador _transportadorDoPedido;

  Usuario get usuario => _usuarioDoPedido;

  static final VAZIO = PedidoBuilder().create();


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

  Peso get peso => _peso;

  set peso(Peso value) {
    _peso = value;
  }

  Volume get volume => _volume;

  set volume(Volume value) {
    _volume = value;
  }

  limparPedido(){
    _numero = VAZIO.numero;
    _dataHora = VAZIO.dataHora;
    _valor = VAZIO.valor;
    _oPedidoEstaDisponivel = VAZIO.oPedidoEstaDisponivel;
    _oPedidoFoiEntregue = VAZIO.oPedidoFoiEntregue;
    _oPedidoEstaPago = VAZIO.oPedidoEstaPago;
    _meioDeTransporte = VAZIO.meioDeTransporte;
    _itensDoPedido = VAZIO.itensDoPedido;
    _usuarioDoPedido = VAZIO.usuarioDoPedido;
    _transportadorDoPedido = VAZIO.transportadorDoPedido;
  }
}

class PedidoBuilder {
  static final Pedido _pedido = Pedido();

  PedidoBuilder() {
    _pedido.numero = "";
    _pedido.dataHora = DateTime.now();
    _pedido.valor = 0.00;
    _pedido.oPedidoEstaDisponivel = false;
    _pedido.oPedidoFoiEntregue = false;
    _pedido.oPedidoEstaPago = false;
    _pedido.meioDeTransporte = MeioDeTransporteBuilder().create();
    _pedido.itensDoPedido = [ItemDoPedidoBuilder().create()];
    _pedido.usuarioDoPedido = ClienteBuilder().create();
    _pedido.transportadorDoPedido = TransportadorBuilder().create();
    _pedido.peso = PesoBuilder().create();
    _pedido.volume = VolumeBuilder().create();
  }

  PedidoBuilder deNumero(String numero) {
    _pedido.numero = numero;
    return this;
  }

  PedidoBuilder criadoEm(DateTime dataHora) {
    _pedido.dataHora = dataHora;
    return this;
  }

  PedidoBuilder comValor(double valor) {
    _pedido.valor = valor;
    return this;
  }

  PedidoBuilder oPedidoEstaDisponivel(bool disponivel) {
    _pedido.oPedidoEstaDisponivel = disponivel;
    return this;
  }

  PedidoBuilder oPedidoFoiEntregue(bool disponivel) {
    _pedido.oPedidoFoiEntregue = disponivel;
    return this;
  }

  PedidoBuilder oPedidoEstaPago(bool disponivel) {
    _pedido.oPedidoEstaPago = disponivel;
    return this;
  }

  PedidoBuilder meioDeTransporte(MeioDeTransporte meioDeTransporte) {
    _pedido.meioDeTransporte = meioDeTransporte;
    return this;
  }

  PedidoBuilder comItensDoPedido(List<ItemDoPedido> itensDoPedido) {
    _pedido.itensDoPedido = itensDoPedido;
    return this;
  }

  PedidoBuilder usuarioDonoDoPedido(Usuario usuarioDoPedido) {
    _pedido.usuarioDoPedido = usuarioDoPedido;
    return this;
  }

  PedidoBuilder comTransportadorDoPedido(Transportador transportadorDoPedido) {
    _pedido.transportadorDoPedido = transportadorDoPedido;
    return this;
  }

  PedidoBuilder comPeso(Peso peso) {
    _pedido.peso = peso;
    return this;
  }

  PedidoBuilder comVolume(Volume volume) {
    _pedido.volume = volume;
    return this;
  }

  Pedido create() {
    return _pedido;
  }
}
