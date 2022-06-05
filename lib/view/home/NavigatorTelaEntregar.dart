import 'package:flutter/material.dart';
import 'package:levv/view/home/VerificadorDeTipoDeUsuario.dart';

import '../entregar/TelaEntregar.dart';

class NavigatorTelaEntregar {
  static void navegar(BuildContext context) async {
    switch (await VerificadorDeTipoDeUsuario.verificar()) {
      case VerificadorDeTipoDeUsuario.USUARIO_ENTREGADOR:
        _navegarParaTelaEntregar(context);
        break;
      case VerificadorDeTipoDeUsuario.USUARIO_CLIENTE:
        _mensagemDeErro(context, "Cliente!");
        break;
      case VerificadorDeTipoDeUsuario.USUARIO_LOJISTA:
        _mensagemDeErro(context, "Lojista!");
        break;
      case VerificadorDeTipoDeUsuario.USUARIO_ADMINISTRADOR:
        _navegarParaTelaEntregar(context);
        break;
      case VerificadorDeTipoDeUsuario.USUARIO_NAO_CADASTRADO:
        _mensagemDeErro(context,"Não cadastrado!");
        break;
    }
  }

  static void _navegarParaTelaEntregar(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TelaEntregar()));
  }

  static void _mensagemDeErro(BuildContext context, String usuario) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Usuário não cadastrado"),
            content: Text("Você é usuário " +
                usuario +
                "\nNão pode enviar um produto!\nCadastre-se para também poder Entregar um Produto."),
          );
        });
  }
}
