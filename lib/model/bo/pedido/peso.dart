import 'package:flutter/material.dart';
import 'package:levv/model/bo/arquivo/arquivo.dart';

class Peso {
  static const PESO_1 = "Até 1 kg";
  static const PESO_5 = "Até 5 kg";
  static const PESO_10 = "Até 10 kg";
  static const PESO_15 = "Até 15 kg";
  static const PESO_20 = "Até 20 kg";
  static const PESO_25 = "Até 25 kg";

  static const PESO_VALOR_1 = 1;
  static const PESO_VALOR_5 = 5;
  static const PESO_VALOR_10 = 10;
  static const PESO_VALOR_15 = 15;
  static const PESO_VALOR_20 = 20;
  static const PESO_VALOR_25 = 25;

  late int valor;

  static String buscarValorDoPeso(int valor) {
    switch (valor) {
      case Peso.PESO_VALOR_1:
        return Peso.PESO_1;
      case Peso.PESO_VALOR_5:
        return Peso.PESO_5;
      case Peso.PESO_VALOR_10:
        return Peso.PESO_10;
      case Peso.PESO_VALOR_15:
        return Peso.PESO_15;
      case Peso.PESO_VALOR_20:
        return Peso.PESO_20;
      case Peso.PESO_VALOR_25:
        return Peso.PESO_25;
    }
    return "";
  }

  static int buscarNomeDoPesoComValor(String valor) {
    switch (valor) {
      case Peso.PESO_1:
        return Peso.PESO_VALOR_1;
      case Peso.PESO_5:
        return Peso.PESO_VALOR_5;
      case Peso.PESO_10:
        return Peso.PESO_VALOR_10;
      case Peso.PESO_15:
        return Peso.PESO_VALOR_15;
      case Peso.PESO_20:
        return Peso.PESO_VALOR_20;
      case Peso.PESO_25:
        return Peso.PESO_VALOR_25;
    }
    return 0;
  }
}

class PesoBuilder implements PesoValor, PesoBuild {
  final Peso _peso = Peso();

  PesoBuilder._();

  static PesoValor get instance => PesoBuilder._();

  @override
  Peso build() {
    return _peso;
  }

  @override
  PesoBuild valor(int valor) {
    _peso.valor = valor;
    return this;
  }
}

abstract class PesoValor {
  PesoBuild valor(int valor);
}

abstract class PesoBuild {
  Peso build();
}
