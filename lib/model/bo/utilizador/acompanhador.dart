import 'package:levv/model/bo/pedido/pedido.dart';
import 'package:levv/model/bo/usuario/celular.dart';
import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:levv/model/bo/usuario/usuario.dart';
import 'package:levv/model/bo/usuario/usuario_padrao.dart';

class Acompanhador extends UsuarioPadrao implements Usuario {}

class AcompanhadorBuilder
    implements
        AcompanhadorCelularNumero,
        AcompanhadorCelularStatus,
        AcompanhadorCelularTipoDeUsuario,
        AcompanhadorPedido {
  final Acompanhador _acompanhador = Acompanhador();

  AcompanhadorBuilder._();

  static AcompanhadorCelularNumero get instance => AcompanhadorBuilder._();

  @override
  AcompanhadorCelularStatus numero(String numero) {
    _acompanhador.celular.numero = numero;
    return this;
  }

  @override
  Acompanhador build() {
    return _acompanhador;
  }

  @override
  AcompanhadorCelularTipoDeUsuario status(bool celular) {
    _acompanhador.celular.status = celular;
    return this;
  }

  @override
  AcompanhadorPedido tipoDeUsuario(TipoDeUsuario tipoDeUsuario) {
    _acompanhador.tipoDeUsuario = tipoDeUsuario;
    return this;
  }

  @override
  AcompanhadorPedido adicionarLista(List<Pedido> pedidos) {
    _acompanhador.celular.listaDePedidos = pedidos;
    return this;
  }

  @override
  AcompanhadorPedido adicionarPedido(Pedido pedido) {
    _acompanhador.celular.listaDePedidos ??= [];
    _acompanhador.celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  AcompanhadorPedido semLista() {
    return this;
  }
}

abstract class AcompanhadorCelularNumero {
  AcompanhadorCelularStatus numero(String numero);
}

abstract class AcompanhadorCelularStatus {
  AcompanhadorCelularTipoDeUsuario status(bool celular);
}

abstract class AcompanhadorCelularTipoDeUsuario {
  AcompanhadorPedido tipoDeUsuario(TipoDeUsuario tipoDeUsuario);
}

abstract class AcompanhadorPedido {
  AcompanhadorPedido adicionarLista(List<Pedido> pedidos);

  AcompanhadorPedido adicionarPedido(Pedido pedido);

  AcompanhadorPedido semLista();

  Acompanhador build();
}
