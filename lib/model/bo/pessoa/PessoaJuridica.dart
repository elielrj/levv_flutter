
import 'package:flutter/cupertino.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';
import 'package:levv/model/bo/usuario/Usuario.dart';

import '../pedido/Pedido.dart';

abstract class PessoaJuridica extends Usuario {
  late String _cnpj;
  late String _nomeFantasiaDaEmpresa;
  late String _nomeDaEmpresaDaEmpresa;

  String get cnpj => _cnpj;

  set cnpj(String value) {
    _cnpj = value;
  }

  String get nomeFantasiaDaEmpresa => _nomeFantasiaDaEmpresa;

  set nomeFantasiaDaEmpresa(String value) {
    _nomeFantasiaDaEmpresa = value;
  }

  String get nomeDaEmpresaDaEmpresa => _nomeDaEmpresaDaEmpresa;

  set nomeDaEmpresaDaEmpresa(String value) {
    _nomeDaEmpresaDaEmpresa = value;
  }
}
