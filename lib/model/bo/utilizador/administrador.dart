import 'package:levv/model/bo/usuario/celular.dart';
import 'package:levv/model/bo/usuario/perfil/perfil.dart';
import 'package:levv/model/bo/utilizador/cliente.dart';

import '../endereco/endereco.dart';
import '../pedido/pedido.dart';

class Administrador extends Cliente {
  Administrador(
      Perfil perfil,
      Celular celular,
      String nome,
      String sobrenome,
      String cpf,
      DateTime nascimento,
      Endereco? enderecoCasa,
      Endereco? enderecoTrabalho)
      : super(perfil, celular, nome, sobrenome, cpf, nascimento, enderecoCasa,
            enderecoTrabalho);
}
