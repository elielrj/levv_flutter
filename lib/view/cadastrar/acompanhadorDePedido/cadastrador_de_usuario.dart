import 'package:flutter/material.dart';
import 'package:levv/model/bo/usuario/perfil/acompanhar.dart';

import '../../../model/bo/usuario/perfil/perfil.dart';
import '../../../model/dao/backend/PreferencesLevv.dart';

class CadastradorDeUsuario {
  final PreferencesLevv _preferencesLevv = PreferencesLevv();

  //1
  Future<bool> cadastrar(String celular) async {
    try {
      //todo criar DAO p/cadastrar celular

      //verificar se celular já esta cadastrado

      //mandar código de confirmação p/ cadastrar celular

      _salvarPerfil();
      _salvarCelular(celular);
      //cadastrar
      const Duration(seconds: 1);
      //todo modificar retorno
      return true;
    } catch (e) {
      return false;
    }
  }

  //2
  Future<void> _salvarPerfil() async {

    Perfil perfil = Acompanhar();

    await _preferencesLevv.salvarPerfil(perfil);
  }

  //3
  Future<void> _salvarCelular(String celular) async {
    await _preferencesLevv.salvarCelular(celular);
  }
}
