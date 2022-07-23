import 'package:flutter/material.dart';

class TipoDeUsuario {
  static const String ACOMPANHADOR_DO_PEDIDO = "acompanhador_do_pedido";
  static const String ADMINISTRADOR = "administrador";
  static const String CLIENTE = "cliente";
  static const String TRANSPORTADOR = "entregador";
  static const String LOJISTA = "lojista";

  late String tipo;

  String exibirPerfil() {
    return tipo.toString().toUpperCase().replaceAll("_", " ");
  }
}

class TipoDeUsuarioBuilder
    implements TipoDeUsuarioDescricao, TipoDeUsuarioBuild {
  final TipoDeUsuario _tipoDeUsuario = TipoDeUsuario();

  TipoDeUsuarioBuilder._();

  static TipoDeUsuarioDescricao get instance => TipoDeUsuarioBuilder._();

  @override
  build() {
    return _tipoDeUsuario;
  }

  @override
  TipoDeUsuarioBuild descricao(String value) {
    _tipoDeUsuario.tipo = value;
    return this;
  }
}

abstract class TipoDeUsuarioDescricao {
  TipoDeUsuarioBuild descricao(String tipo);
}

abstract class TipoDeUsuarioBuild {
  build();
}
