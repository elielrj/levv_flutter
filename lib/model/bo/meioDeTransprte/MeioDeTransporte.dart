import 'package:flutter/material.dart';

class MeioDeTransporte {
  static const A_PE = "A pé";
  static const BIKE = "Bike";
  static const MOTO = "Moto";
  static const CARRO = "Carro";

  static const A_PE_VALOR = 1;
  static const BIKE_VALOR = 2;
  static const MOTO_VALOR = 3;
  static const CARRO_VALOR = 4;

  static const LISTA_DE_MEIOS = [A_PE,BIKE,MOTO,CARRO];

  late String _descricao;
  //todo peso
  late double _limiteDePeso;
  //todo volume
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

  static int buscarValorDoMeioDeTransporte(String meioDeTransporte) {
    switch (meioDeTransporte) {
      case MeioDeTransporte.A_PE:
        return MeioDeTransporte.A_PE_VALOR;
      case MeioDeTransporte.BIKE:
        return MeioDeTransporte.BIKE_VALOR;
      case MeioDeTransporte.MOTO:
        return MeioDeTransporte.MOTO_VALOR;
      case MeioDeTransporte.CARRO:
        return MeioDeTransporte.CARRO_VALOR;
    }
    return 0;
  }

  static String buscarMeioDeTransportePeloValor(int meioDeTransporte) {
    switch (meioDeTransporte) {
      case MeioDeTransporte.A_PE_VALOR:
        return MeioDeTransporte.A_PE;
      case MeioDeTransporte.BIKE_VALOR:
        return MeioDeTransporte.BIKE;
      case MeioDeTransporte.MOTO_VALOR:
        return MeioDeTransporte.MOTO;
      case MeioDeTransporte.CARRO_VALOR:
        return MeioDeTransporte.CARRO;
    }
    return "";
  }
}

class MeioDeTransporteBuilder {
  static final MeioDeTransporte _meioDeTransporte = MeioDeTransporte();

  MeioDeTransporteBuilder() {
    _meioDeTransporte.descricao = "";
    _meioDeTransporte.limiteDePeso = 0;
    _meioDeTransporte.limiteDeVoume = 0;
    _meioDeTransporte.status = false;
  }

  MeioDeTransporteBuilder comDescricao(String descricao) {
    _meioDeTransporte.descricao = descricao;
    return this;
  }

  MeioDeTransporteBuilder comLimiteDePeso(double limiteDePeso) {
    _meioDeTransporte.limiteDePeso = limiteDePeso;
    return this;
  }

  MeioDeTransporteBuilder comLimiteDeVolume(double limiteDeVolume) {
    _meioDeTransporte.limiteDeVoume = limiteDeVolume;
    return this;
  }

  MeioDeTransporteBuilder comStatus(bool status) {
    _meioDeTransporte.status = status;
    return this;
  }

  MeioDeTransporte create() {
    return _meioDeTransporte;
  }
}
