
import 'package:flutter/material.dart';

class MeioDeTransporte{


  String _descricao;
  double _limiteDePeso;
  double _limiteDeVoume;
  bool _status;

  MeioDeTransporte(
      this._descricao, this._limiteDePeso, this._limiteDeVoume, this._status);

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  double get limiteDeVoume => _limiteDeVoume;

  set limiteDeVoume(double value) {
    _limiteDeVoume = value;
  }

  double get limiteDePeso => _limiteDePeso;

  set limiteDePeso(double value) {
    _limiteDePeso = value;
  }

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }
}