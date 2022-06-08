import 'package:flutter/cupertino.dart';

class Arquivo{

  Image _documento;
  String _descricao;
  bool _status;

  Arquivo(this._documento, this._descricao, this._status);

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  Image get documento => _documento;

  set documento(Image value) {
    _documento = value;
  }

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }
}