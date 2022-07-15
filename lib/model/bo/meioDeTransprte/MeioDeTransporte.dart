
import 'package:flutter/material.dart';

class MeioDeTransporte{


 late  String _descricao;
 late double _limiteDePeso;
 late double _limiteDeVoume;
 late bool _status;

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

class MeioDeTransporteBuilder{
  static final MeioDeTransporte _meioDeTransporte = MeioDeTransporte();

  MeioDeTransporteBuilder(){
    _meioDeTransporte.descricao = "";
    _meioDeTransporte.limiteDePeso = 0;
    _meioDeTransporte.limiteDeVoume = 0;
    _meioDeTransporte.status = false;
  }

  MeioDeTransporteBuilder comDescricao(String descricao){
    _meioDeTransporte.descricao = descricao;
    return this;
  }

  MeioDeTransporteBuilder comLimiteDePeso(double limiteDePeso){
    _meioDeTransporte.limiteDePeso = limiteDePeso;
    return this;
  }

  MeioDeTransporteBuilder comLimiteDeVolume(double limiteDeVolume){
    _meioDeTransporte.limiteDeVoume = limiteDeVolume;
    return this;
  }

  MeioDeTransporteBuilder comStatus(bool status){
    _meioDeTransporte.status = status;
    return this;
  }

  MeioDeTransporte create(){
    return _meioDeTransporte;
  }
}