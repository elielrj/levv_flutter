import 'package:flutter/material.dart';

class TipoDeImovel {
  late String tipo;
  static const String CASA = "Casa";
  static const String APT = "Apt";
  static const String LOJA = "Loja";

  @override
  String toString() {
    return tipo;
  }
}

class TipoDeImovelBuilder implements TipoDeImovelTipo, TipoDeImovelBuild {
  static TipoDeImovel _tipoDeImovel = TipoDeImovel();

  TipoDeImovelBuilder._();

  static TipoDeImovelTipo get instance => TipoDeImovelBuilder._();

  @override
  TipoDeImovel build() {
    return _tipoDeImovel;
  }

  @override
  TipoDeImovelBuild tipo(String tipo) {
    _tipoDeImovel.tipo = tipo;
    return this;
  }
}

abstract class TipoDeImovelTipo {
  TipoDeImovelBuild tipo(String tipo);

}

abstract class TipoDeImovelBuild {


  TipoDeImovel build();
}