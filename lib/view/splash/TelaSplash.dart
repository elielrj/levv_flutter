
// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:levv/controller/usuario/UsuarioController.dart';
import 'package:levv/view/frontend/ColorsLevv.dart';
import 'package:levv/view/frontend/ImageLevv.dart';
import 'package:levv/view/frontend/RouteLevv.dart';
import 'package:levv/view/frontend/TextLevv.dart';

class TelaSplash extends StatefulWidget {
  const TelaSplash({Key? key}) : super(key: key);

  @override
  State<TelaSplash> createState() => _TelaSplashState();
}

class _TelaSplashState extends State<TelaSplash> {
  final UsuarioController _usuarioController = UsuarioController();

  _inicializarCircularProgressIndicator() {
    Timer(Duration(seconds: 3), () async {
      final bool celularEstaCadastrado =
          await _usuarioController.verificarSeCelularEstaCadastrado();

      if (celularEstaCadastrado) {
        Navigator.pushReplacementNamed(context, RouteLevv.TELA_HOME);
      } else {
        Navigator.pushReplacementNamed(
            context, RouteLevv.TELA_CADASTRAR_ACOMAPANHADOR_DE_PEDIDO);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _inicializarCircularProgressIndicator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLevv.FUNDO,
      body: Center(
        child: Container(
          color: ColorsLevv.FUNDO,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Image.asset(
                  ImageLevv.LOGO_DO_APP_LEVV,
                  width: 90,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  TextLevv.NOME_DO_APP,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: ColorsLevv.TEXTO),
                ),
              ),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
                strokeWidth: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
