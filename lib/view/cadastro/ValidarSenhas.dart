import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValidarSenhas {
  static bool validar(BuildContext context, TextEditingController senha1,
      TextEditingController senha2) {
    if (senha1.text.toString().isEmpty || senha2.text.toString().isEmpty) {
      _mensagemDeEroo(context, "Informe a senha!");
      return false;
    } else if (senha1.text.toString().length < 6 ||
        senha2.text.toString().length < 6) {
      _mensagemDeEroo(context, "A senhas deve conter pelomenos 6 caracteres!");
      return false;
    } else if (senha1.text.toString() == senha2.text.toString()) {
      return true;
    } else {
      _mensagemDeEroo(context, "Senhas não conferem!");
      return false;
    }
  }

  static void _mensagemDeEroo(BuildContext context, String erro) {
    showDialog(
        context: context,
        builder: (context) {
          return  AlertDialog(
            title: const Text("Cadastro de usuário"),
            content: Text(erro),
          );
        });
  }
}
