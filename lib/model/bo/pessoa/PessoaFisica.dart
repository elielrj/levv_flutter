
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/usuario/Usuario.dart';

import '../pedido/Pedido.dart';
import '../usuario/TipoDeUsuario.dart';

abstract class PessoaFisica extends Usuario {
  String nome;
  String sobrenome;
  String cpf;
  DateTime nascimento;

  PessoaFisica(
      {required String celuar,
      required bool status,
      required TipoDeUsuario tipoDeUsuario,
      required Endereco enderecoCasa,
      required Endereco enderecoTrabalho,
      required List<Endereco> enderecosFavoritos,
      required List<Pedido> listaDePedidos,
      required this.nome,
      required this.sobrenome,
      required this.cpf,
      required this.nascimento})
      : super(
            celular: celuar,
            status: status,
            tipoDeUsuario: tipoDeUsuario,
            enderecoCasa: enderecoCasa,
            enderecoTrabalho: enderecoTrabalho,
            enderecosFavoritos: enderecosFavoritos,
            listaDePedidos: listaDePedidos);


}
