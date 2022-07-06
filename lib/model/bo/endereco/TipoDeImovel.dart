import 'package:flutter/material.dart';

class TipoDeImovel{

  String _tipo;
  static const String CASA = "Casa";
  static const String APT = "Apt";
  static const String LOJA = "Loja";
  static final VAZIO = TipoDeImovel("");

  TipoDeImovel(this._tipo);

  String get tipo => _tipo;

  set tipo(String value) {
    _tipo = value;
  }
}