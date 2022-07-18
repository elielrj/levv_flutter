
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:levv/model/bo/endereco/Bairro.dart';
import 'package:levv/model/bo/endereco/Cep.dart';
import 'package:levv/model/bo/endereco/TipoDeImovel.dart';

class Endereco{


  late String _descricao;
  late String _logradouro;
  late String _numero;
  late String _complemento;
  late bool _status;

  late TipoDeImovel _tipoDeImovel;

  late Bairro _bairro;

  late Cep _cep;

  late GeoPoint _geologalizacao;

  static const String CASA = "endereco_de_casa";
  static const String TRABALHO = "endereco_de_trabalho";
  static const String FAVORITO = "endereco_de_favorito";

  static late Endereco VAZIO = EnderecoBuilder().create();


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



  @override
  String toString() {
    return
        _logradouro + ', ' +
          _numero + ', ' +
            _tipoDeImovel.toString()  + ' ' +
              _complemento +
                _bairro.toString()
    ;
  }
}

class  EnderecoBuilder{

  static  final Endereco _endereco = Endereco();

  EnderecoBuilder(){
    _endereco.descricao = "";
    _endereco.logradouro = "";
    _endereco.numero = "";
    _endereco.complemento = "";
    _endereco.bairro = Bairro.VAZIO;
    _endereco.cep = Cep.VAZIO;
    _endereco.geologalizacao = GeoPoint(0, 0);
    _endereco.tipoDeImovel = TipoDeImovelBuilder().create();
  }

  EnderecoBuilder comDescricao(String descricao){
    _endereco.descricao = descricao;
    return this;
  }

  EnderecoBuilder comLogradouro(String logradouro){
    _endereco.logradouro = logradouro;
    return this;
  }

  EnderecoBuilder comNumero(String numero){
    _endereco.numero = numero;
    return this;
  }

  EnderecoBuilder comComplemento(String complemento){
    _endereco.complemento = complemento;
    return this;
  }


  EnderecoBuilder comStatus(bool status){
    _endereco.status = status;
    return this;
  }


   EnderecoBuilder comTipoDeImovel(TipoDeImovel tipoDeImovel){
    _endereco.tipoDeImovel = tipoDeImovel;
    return this;
  }


  EnderecoBuilder comBairro(Bairro bairro){
    _endereco.bairro = bairro;
    return this;
  }

  EnderecoBuilder comCep(Cep Cep){
    _endereco.cep = Cep;
    return this;
  }


  EnderecoBuilder comGeologalizacao(GeoPoint geologalizacao){
    _endereco.geologalizacao = geologalizacao;
    return this;
  }

  Endereco create(){
    return _endereco;
  }

}