import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:levv/model/bo/utilizador/acompanhador.dart';

import '../endereco/endereco.dart';
import '../pedido/pedido.dart';

class Cliente extends Acompanhador {
  late String nome;
  late String sobrenome;
  late String cpf;
  late DateTime nascimento;

  Endereco? enderecoCasa;
  Endereco? enderecoTrabalho;
}

class ClienteBuilder
    implements
        ClienteCelularNumero,
        ClienteCelularStatus,
        ClienteCelularTipoDeUsuario,
        ClienteNome,
        ClienteSobrenome,
        ClienteCpf,
        ClienteDataNascimento,
        ClienteEnderecoCasa,
        ClienteEnderecoTrabalho,
        ClientePedido {
  final Cliente _cliente = Cliente();

  ClienteBuilder._();

  static ClienteCelularNumero get instance => ClienteBuilder._();

  @override
  ClienteCelularStatus numero(String numero) {
    _cliente.celular.numero = numero;
    return this;
  }

  @override
  ClientePedido adicionarLista(List<Pedido> pedidos) {
    _cliente.celular.listaDePedidos = pedidos;
    return this;
  }

  @override
  ClientePedido adicionarPedido(Pedido pedido) {
    _cliente.celular.listaDePedidos ??= [];
    _cliente.celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  Cliente build() {
    return _cliente;
  }

  @override
  ClienteDataNascimento cpf(String cpf) {
    _cliente.cpf = cpf;
    return this;
  }

  @override
  ClienteEnderecoTrabalho enderecoCasa(Endereco endereco) {
    _cliente.enderecoCasa = endereco;
    return this;
  }

  @override
  ClientePedido enderecoTrabalho(Endereco endereco) {
    _cliente.enderecoTrabalho = endereco;
    return this;
  }

  @override
  ClienteEnderecoCasa nascimento(DateTime nascimento) {
    _cliente.nascimento = nascimento;
    return this;
  }

  @override
  ClienteSobrenome nome(String nome) {
    _cliente.nome = nome;
    return this;
  }

  @override
  ClienteEnderecoTrabalho semEnderecoCasa() {
    return this;
  }

  @override
  ClientePedido semEnderecoTrabalho() {
    return this;
  }

  @override
  ClientePedido semLista() {
    return this;
  }

  @override
  ClienteCpf sobrenome(String sobrenome) {
    _cliente.sobrenome = sobrenome;
    return this;
  }

  @override
  ClienteCelularTipoDeUsuario status(bool status) {
    _cliente.celular.status = status;
    return this;
  }

  @override
  ClienteNome tipoDeUsuario(TipoDeUsuario tipoDeUsuario) {
    _cliente.tipoDeUsuario = tipoDeUsuario;
    return this;
  }
}

abstract class ClienteCelularNumero {
  ClienteCelularStatus numero(String numero);
}

abstract class ClienteCelularStatus {
  ClienteCelularTipoDeUsuario status(bool status);
}

abstract class ClienteCelularTipoDeUsuario {
  ClienteNome tipoDeUsuario(TipoDeUsuario tipoDeUsuario);
}

abstract class ClienteNome {
  ClienteSobrenome nome(String nome);
}

abstract class ClienteSobrenome {
  ClienteCpf sobrenome(String sobrenome);
}

abstract class ClienteCpf {
  ClienteDataNascimento cpf(String cpf);
}

abstract class ClienteDataNascimento {
  ClienteEnderecoCasa nascimento(DateTime nascimento);
}

abstract class ClienteEnderecoCasa {
  ClienteEnderecoTrabalho enderecoCasa(Endereco endereco);

  ClienteEnderecoTrabalho semEnderecoCasa();
}

abstract class ClienteEnderecoTrabalho {
  ClientePedido enderecoTrabalho(Endereco endereco);

  ClientePedido semEnderecoTrabalho();
}

abstract class ClientePedido {
  ClientePedido adicionarLista(List<Pedido> pedidos);

  ClientePedido adicionarPedido(Pedido pedido);

  ClientePedido semLista();

  Cliente build();
}
