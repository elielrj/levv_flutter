import 'package:cloud_firestore/cloud_firestore.dart';

class Endereco{
  String _descricao;
  String _logradouro;
  String _bairro;
  String _cidade;
  String _estado;
  String _numero;
  String _complemento;
  String _tipoDeImovel;
  String _cep;
  bool _status;
  GeoPoint _geologalizacao;

  Endereco(
      this._descricao,
      this._logradouro,
      this._bairro,
      this._cidade,
      this._estado,
      this._numero,
      this._complemento,
      this._tipoDeImovel,
      this._cep,
      this._status,
      this._geologalizacao);

  GeoPoint get geologalizacao => _geologalizacao;

  set geologalizacao(GeoPoint value) {
    _geologalizacao = value;
  }

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get cep => _cep;

  set cep(String value) {
    _cep = value;
  }

  String get tipoDeImovel => _tipoDeImovel;

  set tipoDeImovel(String value) {
    _tipoDeImovel = value;
  }

  String get complemento => _complemento;

  set complemento(String value) {
    _complemento = value;
  }

  String get numero => _numero;

  set numero(String value) {
    _numero = value;
  }

  String get estado => _estado;

  set estado(String value) {
    _estado = value;
  }

  String get cidade => _cidade;

  set cidade(String value) {
    _cidade = value;
  }

  String get bairro => _bairro;

  set bairro(String value) {
    _bairro = value;
  }

  String get logradouro => _logradouro;

  set logradouro(String value) {
    _logradouro = value;
  }

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }
}