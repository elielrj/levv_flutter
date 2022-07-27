// @dart=2.9

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:levv/view/acompanhar/TelaAcompanhar.dart';
import 'package:levv/view/cadastrar/administrador/TelaCadastrarAdministrador.dart';
import 'package:levv/view/cadastrar/acompanhadorDePedido/tela_cadastrar_acompanhador.dart';
import 'package:levv/view/cadastrar/cliente/TelaCadastrarCliente.dart';
import 'package:levv/view/cadastrar/endereco/TelaCadastrarEndereco.dart';
import 'package:levv/view/cadastrar/lojista/TelaCadastrarLojista.dart';
import 'package:levv/view/cadastrar/transportador/TelaCadastrarTransportador.dart';
import 'package:levv/view/entregar/TelaEntregar.dart';
import 'package:levv/view/enviar/tela_enviar.dart';
import 'package:levv/view/frontend/route_levv.dart';
import 'package:levv/view/home/tela_home.dart';
import 'package:levv/view/splash/tela_splash.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      RouteLevv.TELA_SPLASH: (context) => const TelaSplash(),
      //RouteLevv.TELA_HOME: (context) => TelaHome(),
      RouteLevv.TELA_CADASTRAR_ACOMPANHADOR_DE_PEDIDO: (context) =>
          const TelaCadastrarAcompanhador(),
      RouteLevv.TELA_CADASTRAR_TRANSPORTADOR: (context) =>
          const TelaCadastrarTransportador(),
      RouteLevv.TELA_CADASTRAR_CLIENTE: (context) =>
          const TelaCadastrarCliente(),
      RouteLevv.TELA_CADASTRAR_LOJISTA: (context) =>
          const TelaCadastrarLojista(),
      RouteLevv.TELA_CADASTRAR_ADMINISTRADOR: (context) =>
          const TelaCadastrarAdministrador(),
      RouteLevv.TELA_CADASTRAR_ENDERECO: (context) =>
          const TelaCadastrarEndereco(),
      RouteLevv.TELA_ACOMPANHAR: (context) => const TelaAcompanhar(),
      //RouteLevv.TELA_ENVIAR: (context) => TelaEnviar(),
      RouteLevv.TELA_ENTREGAR: (context) => const TelaEntregar(),
    },
     home: const TelaSplash(), //1º
    // home:const TelaLocalizar(),
    // home:const TelaHome(),
    // home:TelaEnviar(),                 //todo consertar erro de exibição de tela
    // home:TelaEntregar(),               //todo fazer tela
    // home:TelaCadastrarTransportador(), //todo continuar a criação de tela
    // home:TelaCadastrarLojista(),       //todo continuar a criação de tela
    // home:TelaCadastrarCliente(),       //todo continuar a criação de tela
    // home:TelaCadastrarAdministrador(),   //todo fazer tela
    // home:const TelaCadastrarAcompanhadorDePedido(),
    // home:TelaCadastrarEndereco(), //todo criar
    // home:TelaLocalizar(), //todo criar
    debugShowCheckedModeBanner: false,
  ));
}
