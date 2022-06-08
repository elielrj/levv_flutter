import 'package:levv/model/Endereco/Endereco.dart';
import 'package:levv/model/pedido/Pedido.dart';
import 'package:levv/model/pessoa/PessoaJuridica.dart';

class Lojista extends PessoaJuridica {
  Lojista(
      String tipoDeUsuario,
      bool status,
      String email,
      String numeroDeCelular,
      String ddd,
      Endereco casa,
      Endereco trabalho,
      Endereco favoritos,
      String cnpj,
      String nomeFantasia,
      String nomeDaEmpresa)
      : super(tipoDeUsuario, status, email, numeroDeCelular, ddd, casa,
            trabalho, favoritos, cnpj, nomeFantasia, nomeDaEmpresa);

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
}
