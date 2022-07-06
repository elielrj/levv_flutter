import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';

import '../endereco/Endereco.dart';

abstract class Usuario {
  String celular;
  bool status;

  TipoDeUsuario tipoDeUsuario;

  Endereco enderecoCasa;
  Endereco enderecoTrabalho;
  List<Endereco> enderecosFavoritos;

  List<Pedido> listaDePedidos;

  Usuario({
    required this.celular,
    required this.status,
    required this.tipoDeUsuario,
    required this.enderecoCasa,
    required this.enderecoTrabalho,
    required this.enderecosFavoritos,
    required this.listaDePedidos
  });
}
