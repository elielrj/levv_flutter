

import '../pedido/pedido.dart';

class Celular {

  late String numero;
  late bool status;

  List<Pedido>? listaDePedidos;
}

class CelularBuilder implements CelularNumero, CelularStatus, CelularListaDePedidos {
  final Celular _celular = Celular();

  CelularBuilder._();

  static CelularNumero get instance => CelularBuilder._();

  @override
  CelularStatus numero(String numero) {
    _celular.numero = numero;
    return this;
  }

  @override
  Celular build() {
    return _celular;
  }

  @override
  CelularListaDePedidos status(bool status) {
    _celular.status = status;
    return this;
  }

  @override
  CelularListaDePedidos adicionarListaDePedidos(List<Pedido> lista) {
    _celular.listaDePedidos = lista;
    return this;
  }

  @override
  CelularListaDePedidos adicionarPedidoNaLista(Pedido pedido) {
    _celular.listaDePedidos ??= [];
    _celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  CelularListaDePedidos semListaDePedidos() {
    return this;
  }

}

abstract class CelularNumero {
  CelularStatus numero(String numero);
}

abstract class CelularStatus {
  CelularListaDePedidos status(bool status);
}

abstract class CelularListaDePedidos{
  CelularListaDePedidos adicionarPedidoNaLista(Pedido pedido);
  CelularListaDePedidos adicionarListaDePedidos(List<Pedido> lista);
  CelularListaDePedidos semListaDePedidos();
  Celular build();
}
