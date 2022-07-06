
import 'package:flutter/material.dart';

class ErroFirebaseAuth {


  static void exibirErro(BuildContext context, var onError) {


      switch (onError.code) {
        case "too-many-requests":
          _exibir(context, "Excesso de tentativas, tente mais tarde!");
          break;
        case 'invalid-email':
          _exibir(context, "E-mail inválido!");
          break;
        case 'user-disabled':
          _exibir(context, "Usuário dasabilitado!");
          break;
        case 'user-not-found':
          _exibir(context, "Usuário não encontrado!");
          break;
        case 'wrong-password':
          _exibir(context, "Senha inválida!");
          break;
        case 'email-already-in-use':
          _exibir(context, "E-mail já cadastrado!");
          break;
        default:
          _exibir(context, "Falha ao logar... " + onError.toString());
          break;
      }

  }

  static void _exibir(BuildContext context, String mensagemDeErro) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Login"),
            content: Text(mensagemDeErro),
          );
        });
  }



}
