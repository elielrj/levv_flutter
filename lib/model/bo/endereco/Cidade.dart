
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:levv/model/bo/endereco/Estado.dart';

class Cidade{

  int _id;
  String _nome;
  bool _status;
  Estado _estado;
  static final Cidade VAZIO = Cidade(0, '',false,Estado.VAZIO);

  Cidade(this._id, this._nome, this._status, this._estado);

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  Estado get estado => _estado;

  set estado(Estado value) {
    _estado = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  @override
  String toString() {
    return
      _nome + ', ' +
        _estado.toString()
      ;
  }
}
