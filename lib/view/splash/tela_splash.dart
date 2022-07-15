import 'dart:async';
import 'package:flutter/material.dart';
import 'package:levv/view/frontend/colors_levv.dart';
import 'package:levv/view/frontend/image_levv.dart';
import 'package:levv/view/frontend/route_levv.dart';
import 'package:levv/view/frontend/text_levv.dart';
import 'package:levv/view/home/tela_home.dart';
import 'package:levv/view/splash/buscador_de_usuario.dart';
import '../../model/bo/usuario/Usuario.dart';

class TelaSplash extends StatefulWidget {
  const TelaSplash({Key? key}) : super(key: key);

  @override
  State<TelaSplash> createState() => _TelaSplashState();
}

class _TelaSplashState extends State<TelaSplash> {

  final BuscadorDeUsuario _buscadorDeUsuario = BuscadorDeUsuario();

  late final Usuario _usuario;

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

  //1
  _inicializarCircularProgressIndicator() {
    Timer(const Duration(seconds: 3), () async {

      if (await _verificarSeCelularEstaCadastrado()) {

        await _buscarUsuario();

        await _navegarParaTelaHome(usuario: _usuario);

      } else {
        await _navegarParaTelaCadastrarAcompanhadorDePedido();
      }

    });
  }

  //2
  Future<bool> _verificarSeCelularEstaCadastrado() async {
    return await _buscadorDeUsuario.verificarSeUsuarioEstaCadastrado();
  }

  //3
  _navegarParaTelaHome({required Usuario usuario}) {
    //Navigator.pushReplacementNamed(context, RouteLevv.TELA_HOME);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TelaHome(usuario: _usuario)));
  }

  //4
  _navegarParaTelaCadastrarAcompanhadorDePedido() {
    Navigator.pushReplacementNamed(
        context, RouteLevv.TELA_CADASTRAR_ACOMPANHADOR_DE_PEDIDO);
  }

  //5
  Future<void> _buscarUsuario() async {
    _usuario = await _buscadorDeUsuario.buscarUsuarioCadastrado();
  }
}
