import 'dart:async';
import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesLevv {
  static const String _CELULAR = "celular";
  static const String _TIPO_DE_USUARIO = "tipo_de_usuario";

  Future<TipoDeUsuario> buscarTipoDeUsuario() async {
    final prefs = await SharedPreferences.getInstance();

    String tipo = prefs.getString(_TIPO_DE_USUARIO) ??
        TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO;

    return TipoDeUsuarioBuilder.instance.descricao(tipo).build();
  }

  /// retorna uma strig vazia, caso não esteja cadastrado
  Future<String> buscarCelular() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_CELULAR) ?? "";
  }

  Future<void> salvarTipoDeUsuario(TipoDeUsuario tipoDeUsuario) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_TIPO_DE_USUARIO, tipoDeUsuario.tipo);
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
