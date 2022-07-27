import '../pedido/pedido.dart';

class Celular {
  late String numero;
  late bool status;

  List<Pedido>? listaDePedidos;
}

class CelularBuilder
    implements
        CelularNumero,
        CelularStatus,
        CelularListaDePedidos,
        CelularBuild {
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
  CelularBuild adicionarListaDePedidos(List<Pedido> lista) {
    _celular.listaDePedidos = lista;
    return this;
  }

  @override
  CelularBuild adicionarPedidoNaLista(Pedido pedido) {
    _celular.listaDePedidos ??= [];
    _celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  CelularBuild semListaDePedidos() {
    return this;
  }
}

abstract class CelularNumero {
  CelularStatus numero(String numero);
}

abstract class CelularStatus {
  CelularListaDePedidos status(bool status);
}

abstract class CelularListaDePedidos {
  CelularBuild adicionarPedidoNaLista(Pedido pedido);

  CelularBuild adicionarListaDePedidos(List<Pedido> lista);

  CelularBuild semListaDePedidos();
}

abstract class CelularBuild {
  Celular build();
}
