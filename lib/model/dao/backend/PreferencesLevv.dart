import 'dart:async';
import 'package:levv/model/bo/usuario/perfil/acompanhar.dart';
import 'package:levv/model/bo/usuario/perfil/administrar.dart';
import 'package:levv/model/bo/usuario/perfil/entregar.dart';
import 'package:levv/model/bo/usuario/perfil/enviar.dart';
import 'package:levv/model/bo/usuario/perfil/perfil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesLevv {
  static const String _CELULAR = "celular";
  static const String _PERFIL = "peril";

  Future<Perfil> buscarPerfil() async {
    final prefs = await SharedPreferences.getInstance();

    String perfil = prefs.getString(_PERFIL) ?? Acompanhar.ACOMPANHAR;

    if (perfil == Enviar.ENVIAR) {
      return Acompanhar();
    } else if (perfil == Entregar.ENTREGAR) {
      return Entregar();
    } else if (perfil == Administrar.ADMINISTRAR) {
      return Administrar();
    } else {
      return Enviar();
    }
  }

  /// retorna uma strig vazia, caso não esteja cadastrado
  Future<String> buscarCelular() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_CELULAR) ?? "";
  }

  Future<void> salvarPerfil(Perfil perfil) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_PERFIL, perfil.exibirPerfil());
  }

  Future<void> salvarCelular(String celular) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_CELULAR, celular);
  }

  Future<void> limparTodosOsDadosDoUsuario() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.clear();
  }
}
