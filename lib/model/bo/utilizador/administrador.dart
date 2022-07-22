import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:levv/model/bo/utilizador/cliente.dart';

import '../endereco/endereco.dart';
import '../pedido/pedido.dart';

class Administrador extends Cliente {}

class AdministradorBuilder
    implements
        AdministradorCelularNumero,
        AdministradorCelularStatus,
        AdministradorTipoDeUsuario,
        AdministradorNome,
        AdministradorSobrenome,
        AdministradorCpf,
        AdministradorDataDeNascimento,
        AdministradorEnderecoCasa,
        AdministradorEnderecoTrabalho,
        AdministradorPedido {
  final Administrador _administrador = Administrador();

  AdministradorBuilder._();

  static AdministradorCelularNumero get instance => AdministradorBuilder._();

  @override
  AdministradorPedido adicionarLista(List<Pedido> pedidos) {
    _administrador.celular.listaDePedidos = pedidos;
    return this;
  }

  @override
  AdministradorPedido adicionarPedidos(Pedido pedido) {
    _administrador.celular.listaDePedidos ??= [];
    _administrador.celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  Administrador build() {
    return _administrador;
  }

  @override
  AdministradorDataDeNascimento cpf(String cpf) {
    _administrador.cpf = cpf;
    return this;
  }

  @override
  AdministradorEnderecoTrabalho enderecoCasa(Endereco endereco) {
    _administrador.enderecoCasa = endereco;
    return this;
  }

  @override
  AdministradorPedido enderecoTrabalho(Endereco endereco) {
    _administrador.enderecoTrabalho = endereco;
    return this;
  }

  @override
  AdministradorEnderecoCasa nascimento(DateTime nascimento) {
    _administrador.nascimento = nascimento;
    return this;
  }

  @override
  AdministradorSobrenome nome(String nome) {
    _administrador.nome = nome;
    return this;
  }

  @override
  AdministradorCelularStatus numero(String numero) {
    _administrador.celular.numero = numero;
    return this;
  }

  @override
  AdministradorEnderecoTrabalho semEnderecoCasa() {
    return this;
  }

  @override
  AdministradorPedido semEnderecoTrabalho() {
    return this;
  }

  @override
  AdministradorPedido semLista() {
    return this;
  }

  @override
  AdministradorCpf sobrenome(String sobrenome) {
    _administrador.sobrenome = sobrenome;
    return this;
  }

  @override
  AdministradorTipoDeUsuario status(bool celular) {
    _administrador.celular.status = celular;
    return this;
  }

  @override
  AdministradorNome tipoDeUsuario(TipoDeUsuario tipoDeUsuario) {
    _administrador.tipoDeUsuario = tipoDeUsuario;
    return this;
  }
}

abstract class AdministradorCelularNumero {
  AdministradorCelularStatus numero(String numero);
}

abstract class AdministradorCelularStatus {
  AdministradorTipoDeUsuario status(bool celular);
}

abstract class AdministradorTipoDeUsuario {
  AdministradorNome tipoDeUsuario(TipoDeUsuario tipoDeUsuario);
}

abstract class AdministradorNome {
  AdministradorSobrenome nome(String nome);
}

abstract class AdministradorSobrenome {
  AdministradorCpf sobrenome(String sobrenome);
}

abstract class AdministradorCpf {
  AdministradorDataDeNascimento cpf(String cpf);
}

abstract class AdministradorDataDeNascimento {
  AdministradorEnderecoCasa nascimento(DateTime nascimento);
}

abstract class AdministradorEnderecoCasa {
  AdministradorEnderecoTrabalho enderecoCasa(Endereco endereco);

  AdministradorEnderecoTrabalho semEnderecoCasa();
}

abstract class AdministradorEnderecoTrabalho {
  AdministradorPedido enderecoTrabalho(Endereco endereco);

  AdministradorPedido semEnderecoTrabalho();
}

abstract class AdministradorPedido {
  AdministradorPedido adicionarLista(List<Pedido> pedidos);

  AdministradorPedido adicionarPedidos(Pedido pedido);

  AdministradorPedido semLista();

  Administrador build();
}
