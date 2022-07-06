import 'package:flutter/material.dart';

class Cep{

  String _cep;
  bool _status;
  static final VAZIO = Cep("", false);

  Cep(this._cep, this._status);

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