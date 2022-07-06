
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Cidade.dart';

class Bairro{

  int _id;
  String _nome;
  bool _status;
  Cidade  _cidade;

  static final VAZIO = Bairro(0, "", false, Cidade.VAZIO);

  Bairro(this._id, this._nome, this._status, this._cidade);

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

  int get id => _id;

  set id(int value) {
    _id = value;
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