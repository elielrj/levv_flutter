import 'package:flutter/material.dart';

class ValidadorDeSenha {
  String _mensagemDeErro = "";

  bool validarSenha(String valor) {
    if (valor.length >= 6) {
      return true;
    } else {
      _mensagemDeErro = "A senha possuí menos de 6 caracteres!";
      return false;
    }
  }

  String get erro  => _mensagemDeErro; 

  bool validarSenhas(String senha, String senhaConfirmacao){
  if (senha.length >= 6) {
      for (int i = 0; i < senha.length; i++) {
        for (int y = 0; y < senhaConfirmacao.length; y++) {
          if (i != y) {
            if (senha[i] == senhaConfirmacao[y]) {
              _mensagemDeErro = "A senha possuí caracteres repetidos!";
              return false;
            }
          }
        }
      }
      return true;
    } else {
      _mensagemDeErro = "A senha possuí menos de 6 caracteres!";
      return false;
    }
  }
}
