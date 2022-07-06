
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:levv/model/bo/endereco/Bairro.dart';
import 'package:levv/model/bo/endereco/Cep.dart';
import 'package:levv/model/bo/endereco/TipoDeImovel.dart';

class Endereco{

  int _id;
  String _descricao;
  String _logradouro;
  String _numero;
  String _complemento;
  bool _status;

  TipoDeImovel _tipoDeImovel;

  Bairro _bairro;

  Cep _cep;

  GeoPoint _geologalizacao;

  static final Endereco VAZIO = Endereco(0, "", "", "", "", false, TipoDeImovel.VAZIO, Bairro.VAZIO, Cep.VAZIO, const GeoPoint(0,0));

  Endereco(
      this._id,
      this._descricao,
      this._logradouro,
      this._numero,
      this._complemento,
      this._status,
      this._tipoDeImovel,
      this._bairro,
      this._cep,
      this._geologalizacao);

  GeoPoint get geologalizacao => _geologalizacao;

  set geologalizacao(GeoPoint value) {
    _geologalizacao = value;
  }

  Cep get cep => _cep;

  set cep(Cep value) {
    _cep = value;
  }

  Bairro get bairro => _bairro;

  set bairro(Bairro value) {
    _bairro = value;
  }

  TipoDeImovel get tipoDeImovel => _tipoDeImovel;

  set tipoDeImovel(TipoDeImovel value) {
    _tipoDeImovel = value;
  }

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get complemento => _complemento;

  set complemento(String value) {
    _complemento = value;
  }

  String get numero => _numero;

  set numero(String value) {
    _numero = value;
  }

  String get logradouro => _logradouro;

  set logradouro(String value) {
    _logradouro = value;
  }

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }


  int get id => _id;

  set id(int value) {
    _id = value;
  }

  @override
  String toString() {
    return
      'Endereço\n' +
        _logradouro + ', ' +
          _numero + ', ' +
            _tipoDeImovel.toString() + ' ' +
              _complemento + '\n' +
                _bairro.toString()
    ;
  }
}