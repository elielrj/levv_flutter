import 'package:levv/model/bo/pedido/pedido.dart';
import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:levv/model/bo/utilizador/acompanhador.dart';

import '../endereco/endereco.dart';

class Lojista extends Acompanhador {
  List<Endereco>? enderecosFavoritos;
  late String cnpj;
  late String nomeFantasiaDaEmpresa;
  late String nomeDaEmpresa;
}

class LojistaBuider
    implements
        LojistaCelularNumero,
        LojistaCelularStatus,
        LojistaTipoDeUsuario,
        LojistaPedido,
        LojistaEnderecosFavoritos,
        LojistaCnpj,
        LojistaNomeFantasia,
        LojistaNomeDaEmpresa,
        LojistaBuild {
  final Lojista _lojista = Lojista();

  LojistaBuider._();

  static LojistaCelularNumero get instance => LojistaBuider._();

  @override
  LojistaCnpj adicionarEnderecoFavorito(Endereco endereco) {
    _lojista.enderecosFavoritos ??= [];
    _lojista.enderecosFavoritos!.add(endereco);
    return this;
  }

  @override
  LojistaCnpj adicionarListaDeEnderecosFavoritos(List<Endereco> favoritos) {
    _lojista.enderecosFavoritos = favoritos;
    return this;
  }

  @override
  LojistaEnderecosFavoritos adicionarListaDePedidos(List<Pedido> pedidos) {
    _lojista.celular.listaDePedidos = pedidos;
    return this;
  }

  @override
  LojistaEnderecosFavoritos adicionarPedido(Pedido pedido) {
    _lojista.celular.listaDePedidos ??= [];
    _lojista.celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  Lojista builder() {
    return _lojista;
  }

  @override
  LojistaNomeFantasia cnpj(String cnpj) {
    _lojista.cnpj = cnpj;
    return this;
  }

  @override
  LojistaBuild nomeDaEmpresa(String nomeDaEmpresa) {
    _lojista.nomeDaEmpresa = nomeDaEmpresa;
    return this;
  }

  @override
  LojistaNomeDaEmpresa nomeFantasia(String nomeFantasia) {
    _lojista.nomeFantasiaDaEmpresa = nomeFantasia;
    return this;
  }

  @override
  LojistaCelularStatus numeroDeCelular(String celular) {
    _lojista.celular.numero = celular;
    return this;
  }

  @override
  LojistaCnpj semEnderecoFavorito() {
    return this;
  }

  @override
  LojistaEnderecosFavoritos semPedido() {
    return this;
  }

  @override
  LojistaTipoDeUsuario status(bool celular) {
    _lojista.celular.status = celular;
    return this;
  }

  @override
  LojistaPedido tipoDeUsuario() {
    _lojista.tipoDeUsuario =
        TipoDeUsuarioBuilder.instance.descricao(TipoDeUsuario.LOJISTA).build();
    return this;
  }
}

abstract class LojistaCelularNumero {
  LojistaCelularStatus numeroDeCelular(String celular);
}

abstract class LojistaCelularStatus {
  LojistaTipoDeUsuario status(bool celular);
}

abstract class LojistaTipoDeUsuario {
  LojistaPedido tipoDeUsuario();
}

abstract class LojistaPedido {
  LojistaEnderecosFavoritos adicionarListaDePedidos(List<Pedido> pedidos);

  LojistaEnderecosFavoritos adicionarPedido(Pedido pedido);

  LojistaEnderecosFavoritos semPedido();
}

abstract class LojistaEnderecosFavoritos {
  LojistaCnpj adicionarListaDeEnderecosFavoritos(List<Endereco> favoritos);

  LojistaCnpj adicionarEnderecoFavorito(Endereco endereco);

  LojistaCnpj semEnderecoFavorito();
}

abstract class LojistaCnpj {
  LojistaNomeFantasia cnpj(String cnpj);
}

abstract class LojistaNomeFantasia {
  LojistaNomeDaEmpresa nomeFantasia(String nomeFantasia);
}

abstract class LojistaNomeDaEmpresa {
  LojistaBuild nomeDaEmpresa(String nomeDaEmpresa);
}

abstract class LojistaBuild {
  Lojista builder();
}
