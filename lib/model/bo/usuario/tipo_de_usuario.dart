
import 'package:flutter/material.dart';

class TipoDeUsuario{

  static const String ACOMPANHADOR_DO_PEDIDO = "acompanhador_do_pedido";
  static const String ADMINISTRADOR = "administrador";
  static const String CLIENTE = "cliente";
  static const String TRANSPORTADOR = "entregador";
  static const String LOJISTA = "lojista";

  late String _tipo;


  String get tipo => _tipo;

  set tipo(String value) {
    _tipo = value;
  }

  String exibirPerfil(){
    return _tipo.toString().toUpperCase().replaceAll("_", " ");
  }
}

class TipoDeUsuarioBuilder{

  static final TipoDeUsuario _tipoDeUsuario = TipoDeUsuario();

  TipoDeUsuarioBuilder(){
    _tipoDeUsuario.tipo = TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO;
  }

  TipoDeUsuarioBuilder doTipo(String tipo){
    _tipoDeUsuario.tipo = tipo;
    return this;
  }

  TipoDeUsuario create(){
    return _tipoDeUsuario;
  }

}