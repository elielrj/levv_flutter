import 'package:levv/model/pedido/Pedido.dart';

import '../Endereco/Endereco.dart';

abstract class Usuario {
  List<Pedido> listarPedidosDoUsuario();

  Endereco buscarEnderecoDeCasaDoUsuario();

  void alterarEnderecoDeCasaDoUsuario(Endereco endereco);

  Endereco buscarEnderecoDoTrabalhoDoUsuario();

  alterarEnderecoDoTrabalhoDoUsuario(Endereco endereco);

  List<Endereco> listarEnderecosDosFavoritosDoUsuario();

  void removerEnderecoDosFavoritosDoUsuario(Endereco endereco);

  void adicionarEnderecoDosFavoritosDoUsuario(Endereco endereco);
}
