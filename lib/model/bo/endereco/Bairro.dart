
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Cidade.dart';

class Bairro{

  late String _nome;
  late bool _status;
  late Cidade  _cidade;

  static final VAZIO = BairroBuilder().create();



  Cidade get cidade => _cidade;

  set cidade(Cidade value) {
    _cidade = value;
  }

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  @override
  String toString() {
    return
      'bairro ' +
        _nome +
          ', ' +
          _cidade.toString()
    ;
  }
}

class BairroBuilder{
  static final Bairro _bairro = Bairro();

  BairroBuilder(){
    _bairro.nome = "";
    _bairro.status = false;
    _bairro.cidade = Cidade.VAZIO;
  }

  BairroBuilder nomeDoBairro(String nome){
    _bairro.nome = nome;
    return this;
  }

  BairroBuilder status(bool status){
    _bairro.status = status;
    return this;
  }

  BairroBuilder pertenceACidade(Cidade cidade){
    _bairro.cidade = cidade;
    return this;
  }

  Bairro create(){
    return _bairro;
  }
}