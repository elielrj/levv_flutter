import 'package:flutter/material.dart';

import '../../../model/bo/usuario/tipo_de_usuario.dart';
import '../../../model/dao/backend/PreferencesLevv.dart';

class CadastradorDeUsuario {

  final PreferencesLevv _preferencesLevv = PreferencesLevv();

  //1
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

  //2
  Future<void> _salvarTipoDeUsuario() async {

    TipoDeUsuario tipoDeUsuario = TipoDeUsuarioBuilder()
        .doTipo(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO)
        .create();
    await _preferencesLevv.salvarTipoDeUsuario(tipoDeUsuario);
  }

  //3
  Future<void> _salvarCelular(String celular) async {

    await _preferencesLevv.salvarCelular(celular);


  }
}
