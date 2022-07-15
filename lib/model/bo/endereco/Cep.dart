import 'package:flutter/material.dart';

class Cep{

  late String _cep;
  late bool _status;

  static final VAZIO = CepBuilder().create();


  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get cep => _cep;

  set cep(String value) {
    _cep = value;
  }

  @override
  String toString() {
    return 'Cep ' + _cep;
  }
}

class CepBuilder{

  static final Cep _cep = Cep();

  CepBuilder(){
    _cep.cep = "";
    _cep.status = false;
  }

  CepBuilder comCep(String cep){
    _cep.cep = cep;
    return this;
  }

  CepBuilder comStatus(bool status){
    _cep.status= status;
    return this;
  }

  Cep create(){
    return _cep;
  }
}