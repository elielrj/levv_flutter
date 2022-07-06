
// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:levv/controller/usuario/UsuarioController.dart';
import 'package:levv/view/frontend/ColorsLevv.dart';
import '../cadastrar/celular/TelaCadastrarCelular.dart';
import '../home/TelaHome.dart';


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
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaHome(),
            ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              //builder: (context) => const TelaLogin(),
              builder: (context) => const TelaCadastrarCelular(),

            ));
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
                  "imagens/logo_levv.png",
                  width: 90,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "LEVV",
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
