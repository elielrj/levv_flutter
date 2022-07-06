
import 'package:flutter/cupertino.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/pessoa/PessoaFisica.dart';

import '../usuario/TipoDeUsuario.dart';

class Administrador extends PessoaFisica {
  Administrador(
      {required String celuar,
      required bool status,
      required TipoDeUsuario tipoDeUsuario,
      required Endereco enderecoCasa,
      required Endereco enderecoTrabalho,
      required List<Endereco> enderecosFavoritos,
      required List<Pedido> listaDePedidos,
      required String nome,
      required String sobrenome,
      required String cpf,
      required DateTime nascimento}) :
          super(celuar: celuar,
          status: status,
          tipoDeUsuario: tipoDeUsuario,
          enderecoCasa: enderecoCasa,
          enderecoTrabalho: enderecoTrabalho,
          enderecosFavoritos: enderecosFavoritos,
          listaDePedidos: listaDePedidos,
           nome: nome,
          sobrenome: sobrenome,
          cpf: cpf,
          nascimento: nascimento,
          );


}
