import 'package:flutter/material.dart';

class Cep {
  late String cep;
  late bool status;

  @override
  String toString() {
    return 'Cep ' + cep;
  }
}

class CepBuilder implements CepValor, CepBuild {
  final Cep _cep = Cep();

  CepBuilder._();

  static CepValor get instance => CepBuilder._();

  @override
  CepBuild valor(String value) {
    _cep.cep = value;
    return this;
  }

  @override
  Cep build() {
    return _cep;
  }
}

abstract class CepValor {
  CepBuild valor(String value);
}

abstract class CepBuild {
  Cep build();
}
