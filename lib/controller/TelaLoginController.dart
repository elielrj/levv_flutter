import 'package:flutter/material.dart';
import 'package:levv/helper/PreferencesLevv.dart';
import 'package:levv/helper/usuario/LogarUsuario.dart';
import 'package:levv/model/TelaLoginModel.dart';
import '../view/cadastro/TelaCadastro.dart';
import '../view/home/TelaHome.dart';

class TelaLoginController {
  final TelaLoginModel _loginModel = TelaLoginModel();
  late BuildContext _context;

  set context(BuildContext value) {
    _context = value;
  }


  Future<void> logar() async {
    await LogarUsuario.logarUsuarioComEmailESenha(_context,
        _loginModel.email.text.toString(), _loginModel.senha.text.toString());
  }

  void navegarParaTelaCadastro() {
    Navigator.pushReplacement(_context,
        MaterialPageRoute(builder: (context) => const TelaCadastro()));
  }

  void limparCampoEmail() {
    _loginModel.email.clear();
  }

  TextEditingController get senha => _loginModel.senha;

  TextEditingController get email => _loginModel.email;

  String get counterTextEmail => _loginModel.email.text.isEmpty
      ? "0 caracter"
      : _loginModel.email.text.length.toString() + " caracteres";

  String get counterTextSenha => _loginModel.senha.text.isEmpty
      ? "0 caracter"
      : _loginModel.senha.text.length.toString() + " caracteres";

  void atualizarEmail(String email) {
    _loginModel.email.text = email;
  }

  bool get senhaVisivel => _loginModel.senhaVisivel;

  void mudarStatusDaVisibilidadeDaSenha() {
    _loginModel.senhaVisivel = !_loginModel.senhaVisivel;
  }

  void limparCampos() {
    _loginModel.senha.clear();
    _loginModel.email.clear();
  }


}
