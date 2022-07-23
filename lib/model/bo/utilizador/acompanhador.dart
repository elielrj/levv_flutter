import 'package:levv/model/bo/pedido/pedido.dart';
import 'package:levv/model/bo/usuario/celular.dart';
import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:levv/model/bo/usuario/usuario.dart';
import 'package:levv/model/bo/usuario/usuario_padrao.dart';

class Acompanhador extends UsuarioPadrao implements Usuario {



  @override
  TipoDeUsuario buscarTipoDeUsuario() {
    return tipoDeUsuario ?? TipoDeUsuarioBuilder.instance.descricao(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO).build();
  }
}

class AcompanhadorBuilder
    implements
        AcompanhadorCelularNumero,
        AcompanhadorCelularStatus,
        AcompanhadorCelularTipoDeUsuario,
        AcompanhadorPedido,
        AcompanhadorBuild {
  final Acompanhador _acompanhador = Acompanhador();

  AcompanhadorBuilder._();

  static AcompanhadorCelularNumero get instance => AcompanhadorBuilder._();

  @override
  AcompanhadorCelularStatus numeroDeCelular(String numero) {
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
  AcompanhadorPedido tipoDeUsuario() {
    _acompanhador.tipoDeUsuario = TipoDeUsuarioBuilder.instance
        .descricao(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO)
        .build();
    ;
    return this;
  }

  @override
  AcompanhadorBuild adicionarLista(List<Pedido> pedidos) {
    _acompanhador.celular.listaDePedidos = pedidos;
    return this;
  }

  @override
  AcompanhadorBuild adicionarPedido(Pedido pedido) {
    _acompanhador.celular.listaDePedidos ??= [];
    _acompanhador.celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  AcompanhadorBuild semLista() {
    return this;
  }
}

abstract class AcompanhadorCelularNumero {
  AcompanhadorCelularStatus numeroDeCelular(String numero);
}

abstract class AcompanhadorCelularStatus {
  AcompanhadorCelularTipoDeUsuario status(bool celular);
}

abstract class AcompanhadorCelularTipoDeUsuario {
  AcompanhadorPedido tipoDeUsuario();
}

abstract class AcompanhadorPedido {
  AcompanhadorBuild adicionarLista(List<Pedido> pedidos);

  AcompanhadorBuild adicionarPedido(Pedido pedido);

  AcompanhadorBuild semLista();
}

abstract class AcompanhadorBuild {
  Acompanhador build();
}
