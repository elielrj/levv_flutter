
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/usuario/Usuario.dart';

import '../pedido/Pedido.dart';
import '../usuario/TipoDeUsuario.dart';

abstract class PessoaFisica extends Usuario {
  late String _nome;
  late String _sobrenome;
  late String _cpf;
  late DateTime _nascimento;



  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get sobrenome => _sobrenome;

  set sobrenome(String value) {
    _sobrenome = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  DateTime get nascimento => _nascimento;

  set nascimento(DateTime value) {
    _nascimento = value;
  }
}
