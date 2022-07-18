import 'package:flutter/material.dart';

class TipoDeImovel {

  late String _tipo;
  static const String CASA = "Casa";
  static const String APT = "Apt";
  static const String LOJA = "Loja";
  static TipoDeImovel VAZIO = TipoDeImovelBuilder().create();


  String get tipo => _tipo;

  set tipo(String value) {
    _tipo = value;
  }

  @override
  String toString() {
    return _tipo;
  }
}

class TipoDeImovelBuilder {
  static final TipoDeImovel _tipoDeImovel = TipoDeImovel();

  TipoDeImovelBuilder() {
    _tipoDeImovel.tipo = TipoDeImovel.CASA;
  }

  TipoDeImovelBuilder doTipo(String tipo) {
    _tipoDeImovel.tipo = tipo;
    return this;
  }

  TipoDeImovel create() {
    return _tipoDeImovel;
  }
}
