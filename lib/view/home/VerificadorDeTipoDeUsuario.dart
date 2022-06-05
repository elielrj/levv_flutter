import 'package:flutter/material.dart';
import 'package:levv/helper/PreferencesLevv.dart';

class VerificadorDeTipoDeUsuario {
  static const String TIPO_DE_USUARIO_CADASTRADO = "tipo_de_usuario_cadastrado";

  static const int USUARIO_NAO_CADASTRADO = 0;
  static const int USUARIO_ENTREGADOR = 1;
  static const int USUARIO_CLIENTE = 2;
  static const int USUARIO_LOJISTA = 3;
  static const int USUARIO_ADMINISTRADOR = 4;

  static Future<int> verificar() async {
    return await PreferencesLevv.buscarTipoDeUsuario();
  }
}
