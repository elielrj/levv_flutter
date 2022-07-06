
import 'package:flutter/cupertino.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';
import 'package:levv/model/bo/usuario/Usuario.dart';

import '../pedido/Pedido.dart';

abstract class PessoaJuridica extends Usuario {
  String cnpj;
  String nomeFantasiaDaEmpresa;
  String nomeDaEmpresaDaEmpresa;

  PessoaJuridica(
      {required String celuar,
      required bool status,
      required TipoDeUsuario tipoDeUsuario,
      required Endereco enderecoCasa,
      required Endereco enderecoTrabalho,
      required List<Endereco> enderecosFavoritos,
      required List<Pedido> listaDePedidos,
      required this.cnpj,
      required this.nomeFantasiaDaEmpresa,
      required this.nomeDaEmpresaDaEmpresa})
      : super(
            celular: celuar,
            status: status,
            tipoDeUsuario: tipoDeUsuario,
            enderecoCasa: enderecoCasa,
            enderecoTrabalho: enderecoTrabalho,
            enderecosFavoritos: enderecosFavoritos,
            listaDePedidos: listaDePedidos);
}
