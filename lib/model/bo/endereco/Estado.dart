
import 'package:cloud_firestore/cloud_firestore.dart';
class Estado{

  int _id;
  String _nome;
  String _sigla;
  bool _status;
  static final Estado VAZIO = Estado(0, "", "", false);

  Estado(this._id, this._nome, this._sigla, this._status);

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get sigla => _sigla;

  set sigla(String value) {
    _sigla = value;
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
        _nome +
            '/'+
          _sigla
      ;
  }
}