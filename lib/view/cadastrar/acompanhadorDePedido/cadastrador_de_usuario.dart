import 'package:flutter/material.dart';

import '../../../model/bo/usuario/TipoDeUsuario.dart';
import '../../../model/dao/backend/PreferencesLevv.dart';

class CadastradorDeUsuario {

  final PreferencesLevv _preferencesLevv = PreferencesLevv();

  Future<bool> cadastrar(String celular) async {

    try{
      //todo criar DAO p/cadastrar celular

      //verificar se celular já esta cadastrado

      //mandar código de confirmação p/ cadastrar celular

      _salvarTipoDeUsuario();
      _salvarCelular(celular);
      //cadastrar
      const Duration(seconds: 1);
      //todo modificar retorno
      return true;
    }catch(e){
      return false;
    }
  }

  Future<void> _salvarTipoDeUsuario() async {

    TipoDeUsuario tipoDeUsuario = TipoDeUsuarioBuilder()
        .doTipo(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO)
        .create();
    await _preferencesLevv.salvarTipoDeUsuario(tipoDeUsuario);
  }
  Future<void> _salvarCelular(String celular) async {

    await _preferencesLevv.salvarCelular(celular);


  }
}
