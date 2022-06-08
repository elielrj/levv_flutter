import 'package:levv/model/Arquivo/Arquivo.dart';
import 'package:levv/model/Endereco/Endereco.dart';
import 'package:levv/model/pedido/Pedido.dart';
import 'package:levv/model/pessoa/PessoaFisica.dart';
import 'package:levv/model/veiculo/Veiculo.dart';

class Transportador extends PessoaFisica {
  bool _estaAprovado;
  String _numeroregistroDeDocumento;

  List<Pedido> _pedidosTransportados;

  Veiculo _veiculo;

  Arquivo _identificacao;

  Transportador(
      String tipoDeUsuario,
      bool status,
      String email,
      String numeroDeCelular,
      String ddd,
      Endereco casa,
      Endereco trabalho,
      Endereco favoritos,
      String nome,
      String sobrenome,
      String cpf,
      DateTime dataDeNascimento,
      this._estaAprovado,
      this._numeroregistroDeDocumento,
      this._pedidosTransportados,
      this._veiculo,
      this._identificacao)
      : super(tipoDeUsuario, status, email, numeroDeCelular, ddd, casa,
            trabalho, favoritos, nome, sobrenome, cpf, dataDeNascimento);

  @override
  void adicionarEnderecoDosFavoritosDoUsuario(Endereco endereco) {
    // TODO: implement adicionarEnderecoDosFavoritosDoUsuario
  }

  @override
  void alterarEnderecoDeCasaDoUsuario(Endereco endereco) {
    // TODO: implement alterarEnderecoDeCasaDoUsuario
  }

  @override
  alterarEnderecoDoTrabalhoDoUsuario(Endereco endereco) {
    // TODO: implement alterarEnderecoDoTrabalhoDoUsuario
    throw UnimplementedError();
  }

  @override
  Endereco buscarEnderecoDeCasaDoUsuario() {
    // TODO: implement buscarEnderecoDeCasaDoUsuario
    throw UnimplementedError();
  }

  @override
  Endereco buscarEnderecoDoTrabalhoDoUsuario() {
    // TODO: implement buscarEnderecoDoTrabalhoDoUsuario
    throw UnimplementedError();
  }

  @override
  List<Endereco> listarEnderecosDosFavoritosDoUsuario() {
    // TODO: implement listarEnderecosDosFavoritosDoUsuario
    throw UnimplementedError();
  }

  @override
  List<Pedido> listarPedidosDoUsuario() {
    // TODO: implement listarPedidosDoUsuario
    throw UnimplementedError();
  }

  @override
  void removerEnderecoDosFavoritosDoUsuario(Endereco endereco) {
    // TODO: implement removerEnderecoDosFavoritosDoUsuario
  }

  Arquivo get identificacao => _identificacao;

  set identificacao(Arquivo value) {
    _identificacao = value;
  }

  Veiculo get veiculo => _veiculo;

  set veiculo(Veiculo value) {
    _veiculo = value;
  }

  List<Pedido> get pedidosTransportados => _pedidosTransportados;

  set pedidosTransportados(List<Pedido> value) {
    _pedidosTransportados = value;
  }

  String get numeroregistroDeDocumento => _numeroregistroDeDocumento;

  set numeroregistroDeDocumento(String value) {
    _numeroregistroDeDocumento = value;
  }

  bool get estaAprovado => _estaAprovado;

  set estaAprovado(bool value) {
    _estaAprovado = value;
  }
}
