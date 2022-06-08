
import 'package:levv/model/Endereco/Endereco.dart';

abstract class  UsuarioPadrao{
  String _tipoDeUsuario;
  bool _status;
  String _email;
  String _numeroDeCelular;
  String _ddd;

  Endereco _casa;
  Endereco _trabalho;
  Endereco _favoritos;


  UsuarioPadrao(
      this._tipoDeUsuario,
      this._status,
      this._email,
      this._numeroDeCelular,
      this._ddd,
      this._casa,
      this._trabalho,
      this._favoritos);

  String get ddd => _ddd;

  set ddd(String value) {
    _ddd = value;
  }

  String get numeroDeCelular => _numeroDeCelular;

  set numeroDeCelular(String value) {
    _numeroDeCelular = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get tipoDeUsuario => _tipoDeUsuario;

  set tipoDeUsuario(String value) {
    _tipoDeUsuario = value;
  }

  Endereco get favoritos => _favoritos;

  set favoritos(Endereco value) {
    _favoritos = value;
  }

  Endereco get trabalho => _trabalho;

  set trabalho(Endereco value) {
    _trabalho = value;
  }

  Endereco get casa => _casa;

  set casa(Endereco value) {
    _casa = value;
  }
}