import 'package:levv/model/bo/arquivo/arquivo.dart';
import 'package:levv/model/bo/pedido/pedido.dart';
import 'package:levv/model/bo/utilizador/cliente.dart';
import 'package:levv/model/bo/veiculo/veiculo.dart';
import '../endereco/endereco.dart';
import '../usuario/tipo_de_usuario.dart';

class Transportador extends Cliente {
  late bool transportadorEstaAprovado;
  late String numeroRegistroDeDocumento;
  late List<Pedido>? pedidosTransportados;
  late Veiculo veiculo;
  late Arquivo identificacao;
}

class TransportadorBuilder
    implements
        TransportadorCelularNumero,
        TransportadorCelularStatus,
        TransportadorCelularTipoDeUsuario,
        TransportadorNome,
        TransportadorSobrenome,
        TransportadorCpf,
        TransportadorDataNascimento,
        TransportadorEnderecoCasa,
        TransportadorEnderecoTrabalho,
        TransportadorPedido,
        TransportadorAprovado,
        TransportadorNumeroRegistroDocumento,
        TransportadorPedidosTransportados,
        TransportadorArquivoIdentificacao,
        TransportadorVeiculo,
        TransportadorBuild {
  final Transportador _transportador = Transportador();

  TransportadorBuilder._();

  static TransportadorCelularNumero get instance => TransportadorBuilder._();

  @override
  TransportadorCelularStatus numeroDeCelular(String numero) {
    _transportador.celular.numero = numero;
    return this;
  }

  @override
  TransportadorBuild adicionarLista(List<Pedido> pedidos) {
    _transportador.celular.listaDePedidos = pedidos;
    return this;
  }

  @override
  TransportadorBuild adicionarPedido(Pedido pedido) {
    _transportador.celular.listaDePedidos ??= [];
    _transportador.celular.listaDePedidos!.add(pedido);
    return this;
  }

  @override
  TransportadorBuild semLista() {
    return this;
  }

  @override
  Transportador build() {
    return _transportador;
  }

  @override
  TransportadorDataNascimento cpf(String cpf) {
    _transportador.cpf = cpf;
    return this;
  }

  @override
  TransportadorEnderecoTrabalho enderecoCasa(Endereco endereco) {
    _transportador.enderecoCasa = endereco;
    return this;
  }

  @override
  TransportadorEnderecoCasa nascimento(DateTime nascimento) {
    _transportador.nascimento = nascimento;
    return this;
  }

  @override
  TransportadorSobrenome nome(String nome) {
    _transportador.nome = nome;
    return this;
  }

  @override
  TransportadorEnderecoTrabalho semEnderecoCasa() {
    return this;
  }

  @override
  TransportadorCpf sobrenome(String sobrenome) {
    _transportador.sobrenome = sobrenome;
    return this;
  }

  @override
  TransportadorCelularTipoDeUsuario status(bool status) {
    _transportador.celular.status = status;
    return this;
  }

  @override
  TransportadorNome tipoDeUsuario() {
    _transportador.tipoDeUsuario = TipoDeUsuarioBuilder.instance
        .descricao(TipoDeUsuario.TRANSPORTADOR)
        .build();
    return this;
  }

  @override
  TransportadorNumeroRegistroDocumento aprovado(bool status) {
    _transportador.celular.status = status;
    return this;
  }

  @override
  TransportadorVeiculo identificacao(Arquivo identificacao) {
    _transportador.identificacao = identificacao;
    return this;
  }

  @override
  TransportadorPedidosTransportados numeroRegistroDocuento(String numero) {
    _transportador.celular.numero = numero;
    return this;
  }

  @override
  TransportadorPedido veiculo(Veiculo veiculo) {
    _transportador.veiculo = veiculo;
    return this;
  }

  @override
  TransportadorArquivoIdentificacao pedidosTransportados(
      List<Pedido> pedidosTransportados) {
    _transportador.pedidosTransportados = pedidosTransportados;
    return this;
  }

  @override
  TransportadorArquivoIdentificacao semPedidos() {
    return this;
  }

  @override
  TransportadorAprovado enderecoTrabalho(Endereco endereco) {
    _transportador.enderecoTrabalho = endereco;
    return this;
  }

  @override
  TransportadorAprovado semEnderecoTrabalho() {
    return this;
  }
}

abstract class TransportadorCelularNumero {
  TransportadorCelularStatus numeroDeCelular(String numero);
}

abstract class TransportadorCelularStatus {
  TransportadorCelularTipoDeUsuario status(bool status);
}

abstract class TransportadorCelularTipoDeUsuario {
  TransportadorNome tipoDeUsuario();
}

abstract class TransportadorNome {
  TransportadorSobrenome nome(String nome);
}

abstract class TransportadorSobrenome {
  TransportadorCpf sobrenome(String sobrenome);
}

abstract class TransportadorCpf {
  TransportadorDataNascimento cpf(String cpf);
}

abstract class TransportadorDataNascimento {
  TransportadorEnderecoCasa nascimento(DateTime nascimento);
}

abstract class TransportadorEnderecoCasa {
  TransportadorEnderecoTrabalho enderecoCasa(Endereco endereco);

  TransportadorEnderecoTrabalho semEnderecoCasa();
}

abstract class TransportadorEnderecoTrabalho {
  TransportadorAprovado enderecoTrabalho(Endereco endereco);

  TransportadorAprovado semEnderecoTrabalho();
}

abstract class TransportadorAprovado {
  TransportadorNumeroRegistroDocumento aprovado(bool status);
}

abstract class TransportadorNumeroRegistroDocumento {
  TransportadorPedidosTransportados numeroRegistroDocuento(String numero);
}

abstract class TransportadorPedidosTransportados {
  TransportadorArquivoIdentificacao pedidosTransportados(
      List<Pedido> pedidosTransportados);

  TransportadorArquivoIdentificacao semPedidos();
}

abstract class TransportadorArquivoIdentificacao {
  TransportadorVeiculo identificacao(Arquivo identificacao);
}

abstract class TransportadorVeiculo {
  TransportadorPedido veiculo(Veiculo veiculo);
}

abstract class TransportadorPedido {
  TransportadorBuild adicionarLista(List<Pedido> pedidos);

  TransportadorBuild adicionarPedido(Pedido pedido);

  TransportadorBuild semLista();
}

abstract class TransportadorBuild {
  Transportador build();
}
