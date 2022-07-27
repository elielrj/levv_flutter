import 'package:flutter/material.dart';
import 'package:levv/model/bo/meioDeTransprte/meio_de_transporte.dart';


import 'package:levv/model/bo/pedido/volume.dart';


import '../usuario/usuario.dart';
import '../utilizador/transportador.dart';
import 'Peso.dart';
import 'item_do_pedido.dart';


class Pedido {
  late String numero;
  late DateTime dataHora;
  late double valor;
  late Peso peso;
  late Volume volume;
  late bool oPedidoEstaDisponivel;
  late bool oPedidoFoiEntregue;
  late bool oPedidoEstaPago;
  late MeioDeTransporte meioDeTransporte;
  List<ItemDoPedido> itensDoPedido = [];
  late Usuario usuarioDoPedido;
  late Transportador? transportadorDoPedido;

  static const QUANTIDADE_MAXIMA_DE_PEDIDOS = 10;

  limparPedido(){



  }
}

class PedidoBuilder
    implements
        PedidoNumero,
        PedidoDataHora,
        PedidoValor,
        PedidoPeso,
        PedidoVolume,
        PedidoEstaDisponivel,
        PedidoFoiEntregue,
        PedidoEstaPago,
        PedidoMeioDeTransporte,
        PedidoItensDoPedido,
        PedidoUsuarioDoPedido,
        PedidoTransportadorDoPedido,
        PedidoBuild {
  final Pedido _pedido = Pedido();

  PedidoBuilder._();

  static PedidoNumero get instance => PedidoBuilder._();

  @override
  PedidoUsuarioDoPedido adicionarItemNaLIstaDeitensDoPedido(
      ItemDoPedido value) {
    _pedido.itensDoPedido.add(value);
    return this;
  }

  @override
  PedidoValor dataHora(DateTime value) {
    _pedido.dataHora = value;
    return this;
  }

  @override
  PedidoUsuarioDoPedido itensDoPedido(List<ItemDoPedido> listaDeItens) {
    _pedido.itensDoPedido = listaDeItens;
    return this;
  }

  @override
  PedidoItensDoPedido meioDeTransporte(MeioDeTransporte meioDeTransporte) {
    _pedido.meioDeTransporte = meioDeTransporte;
    return this;
  }

  @override
  PedidoEstaPago naoEntregue() {
    _pedido.oPedidoFoiEntregue = false;
    return this;
  }

  @override
  PedidoDataHora numero(String value) {
    _pedido.numero = value;
    return this;
  }

  @override
  PedidoFoiEntregue oPedidoEstaDisponivel(bool status) {
    _pedido.oPedidoEstaDisponivel = status;
    return this;
  }

  @override
  PedidoMeioDeTransporte oPedidoEstaPago(bool status) {
    _pedido.oPedidoEstaPago = status;
    return this;
  }

  @override
  PedidoEstaPago oPedidoFoiEntregue(bool status) {
    _pedido.oPedidoFoiEntregue = status;
    return this;
  }

  @override
  PedidoFoiEntregue pedidoDisponivel() {
    _pedido.oPedidoFoiEntregue = true;
    return this;
  }

  @override
  PedidoMeioDeTransporte pedidoPago() {
    _pedido.oPedidoEstaPago = true;
    return this;
  }

  @override
  PedidoVolume peso(Peso peso) {
    _pedido.peso = peso;
    return this;
  }

  @override
  PedidoTransportadorDoPedido usuarioDoPedido(Usuario usuario) {
    _pedido.usuarioDoPedido = usuario;
    return this;
  }

  @override
  PedidoPeso valor(double value) {
    _pedido.valor = value;
    return this;
  }

  @override
  PedidoEstaDisponivel volume(Volume value) {
    _pedido.volume = value;
    return this;
  }

  @override
  PedidoBuild transportadorDoPedido(Transportador transportador) {
    _pedido.transportadorDoPedido = transportador;
    return this;
  }


  @override
  Pedido build() {
    return _pedido;
  }

  @override
  PedidoBuild semTransportadorDoPedido() {
    _pedido.transportadorDoPedido = null;
    return this;
  }
}

abstract class PedidoNumero {
  PedidoDataHora numero(String numero);
}

abstract class PedidoDataHora {
  PedidoValor dataHora(DateTime numero);
}

abstract class PedidoValor {
  PedidoPeso valor(double numero);
}

abstract class PedidoPeso {
  PedidoVolume peso(Peso peso);
}

abstract class PedidoVolume {
  PedidoEstaDisponivel volume(Volume volume);
}

abstract class PedidoEstaDisponivel {
  PedidoFoiEntregue oPedidoEstaDisponivel(bool status);

  PedidoFoiEntregue pedidoDisponivel();
}

abstract class PedidoFoiEntregue {
  PedidoEstaPago oPedidoFoiEntregue(bool status);

  PedidoEstaPago naoEntregue();
}

abstract class PedidoEstaPago {
  PedidoMeioDeTransporte oPedidoEstaPago(bool status);

  PedidoMeioDeTransporte pedidoPago();
}

abstract class PedidoMeioDeTransporte {
  PedidoItensDoPedido meioDeTransporte(MeioDeTransporte meioDeTransporte);
}

abstract class PedidoItensDoPedido {
  PedidoUsuarioDoPedido itensDoPedido(List<ItemDoPedido> listaDeItens);

  PedidoUsuarioDoPedido adicionarItemNaLIstaDeitensDoPedido(
      ItemDoPedido itemDoPedido);
}

abstract class PedidoUsuarioDoPedido {
  PedidoTransportadorDoPedido usuarioDoPedido(Usuario usuario);
}

abstract class PedidoTransportadorDoPedido {
  PedidoBuild transportadorDoPedido(Transportador transportador);

  PedidoBuild semTransportadorDoPedido();
}

abstract class PedidoBuild {
  Pedido build();
}
