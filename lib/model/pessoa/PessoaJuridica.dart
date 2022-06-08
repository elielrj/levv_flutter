import 'package:levv/model/Endereco/Endereco.dart';
import 'package:levv/model/usuario/Usuario.dart';
import 'package:levv/model/usuario/UsuarioPadrao.dart';

abstract class PessoaJuridica extends UsuarioPadrao implements Usuario {
  String _cnpj;
  String _nomeFantasia;
  String _nomeDaEmpresa;

  PessoaJuridica(
      String tipoDeUsuario,
      bool status,
      String email,
      String numeroDeCelular,
      String ddd,
      Endereco casa,
      Endereco trabalho,
      Endereco favoritos,
      this._cnpj,
      this._nomeFantasia,
      this._nomeDaEmpresa)
      : super(tipoDeUsuario, status, email, numeroDeCelular, ddd, casa,
            trabalho, favoritos);

  String get nomeDaEmpresa => _nomeDaEmpresa;

  set nomeDaEmpresa(String value) {
    _nomeDaEmpresa = value;
  }

  String get nomeFantasia => _nomeFantasia;

  set nomeFantasia(String value) {
    _nomeFantasia = value;
  }

  String get cnpj => _cnpj;

  set cnpj(String value) {
    _cnpj = value;
  }
}
