import 'dart:async';
import 'package:flutter/material.dart';
import 'package:levv/view/home/VerificadorDeTipoDeUsuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesLevv {

  static const String EMAIL_CADASTRADO = "email_cadastrado_com_sucesso";
  static const String USUARIO_CADASTRADO = "usuario_cadastrado_com_sucesso";
  static const String ENDERECO_CADASTRADO = "endereco_cadastrado_com_sucesso";
  static const String EMAIL = "email";
  static const String SENHA = "senha";


  static Future<String> buscarEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(EMAIL) ?? "";
  }

  static Future<String> buscarSenha() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(SENHA) ?? "";
  }


  static Future<void> salvarEmailESenha(String email, String senha) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(SENHA, senha);

    await prefs.setString(EMAIL, email);
    await prefs.setBool(EMAIL_CADASTRADO, true);
  }

  static Future<void> salvarTipoDeUsuario(int tipo) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(
        VerificadorDeTipoDeUsuario.TIPO_DE_USUARIO_CADASTRADO, tipo);
  }

  static Future<int> buscarTipoDeUsuario() async {
    int tipo = 0;
    final prefs = await SharedPreferences.getInstance();
    tipo =
        prefs.getInt(VerificadorDeTipoDeUsuario.TIPO_DE_USUARIO_CADASTRADO) ??
            0;
    return tipo;
  }

  static Future<bool> usuarioEstaCadastrado() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(EMAIL_CADASTRADO)?? false;
  }


}
