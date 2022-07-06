
import 'package:flutter/material.dart';
import 'package:levv/model/dao/backend/PreferencesLevv.dart';
import 'package:levv/model/bo/utilizador/AcompanhadorDePedido.dart';

class AcompanhadorDePedidoController {
  final PreferencesLevv _preferencesLevv = PreferencesLevv();

  Future<AcompanhadorDePedido> busarUsuarioDoTipoAcompanhadorDoPedido(
      {required String celular}) async {
    return await _preferencesLevv.buscarUsuarioDoTipoAcompanhadorDoPedido(
        celular: celular);
  }
}
