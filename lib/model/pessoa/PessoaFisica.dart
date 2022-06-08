import 'package:levv/model/Endereco/Endereco.dart';
import 'package:levv/model/usuario/Usuario.dart';
import 'package:levv/model/usuario/UsuarioPadrao.dart';

abstract class PessoaFisica extends UsuarioPadrao implements Usuario {
  String _nome;
  String _sobrenome;
  String _cpf;
  DateTime _dataDeNascimento;

  PessoaFisica(
      String tipoDeUsuario,
      bool status,
      String email,
      String numeroDeCelular,
      String ddd,
      Endereco casa,
      Endereco trabalho,
      Endereco favoritos,
      this._nome,
      this._sobrenome,
      this._cpf,
      this._dataDeNascimento)
      : super(tipoDeUsuario, status, email, numeroDeCelular, ddd, casa,
            trabalho, favoritos);

  DateTime get dataDeNascimento => _dataDeNascimento;

  set dataDeNascimento(DateTime value) {
    _dataDeNascimento = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  String get sobrenome => _sobrenome;

  set sobrenome(String value) {
    _sobrenome = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }
}
