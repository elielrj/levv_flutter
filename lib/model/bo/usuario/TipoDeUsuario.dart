
import 'package:flutter/material.dart';

class TipoDeUsuario{

  static const String ACOMPANHADOR_DO_PEDIDO = "acompanhador_do_pedido";
  static const String ADMINISTRADOR = "administrador";
  static const String CLIENTE = "cliente";
  static const String ENTREGADOR = "entregador";
  static const String LOJISTA = "lojista";

  String _tipo;

  TipoDeUsuario(this._tipo);

  String get tipo => _tipo;

  set tipo(String value) {
    _tipo = value;
  }
}