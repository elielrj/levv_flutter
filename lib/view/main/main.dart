// @dart=2.9

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:levv/view/acompanhar/TelaAcompanhar.dart';
import 'package:levv/view/cadastrar/administrador/TelaCadastrarAdministrador.dart';
import 'package:levv/view/cadastrar/acompanhadorDePedido/TelaCadastrarAcompanhadorDePedido.dart';
import 'package:levv/view/cadastrar/cliente/TelaCadastrarCliente.dart';
import 'package:levv/view/cadastrar/lojista/TelaCadastrarLojista.dart';
import 'package:levv/view/cadastrar/transportador/TelaCadastrarTransportador.dart';
import 'package:levv/view/entregar/TelaEntregar.dart';
import 'package:levv/view/enviar/TelaEnviar.dart';
import 'package:levv/view/frontend/RouteLevv.dart';
import 'package:levv/view/home/TelaHome.dart';
import 'package:levv/view/splash/TelaSplash.dart';


void main()  {
  runApp(MaterialApp(
    initialRoute: "/",
     routes: {
      RouteLevv.TELA_SPLASH : (context) => const TelaSplash(),
      RouteLevv.TELA_HOME : (context) => const TelaHome(),
      RouteLevv.TELA_ENVIAR_PEDIDO : (context) => const TelaEnviar(),
      RouteLevv.TELA_ENTREGAR_PEDIDO : (context) => const TelaEntregar(),
       RouteLevv.TELA_CADASTRAR_ACOMAPANHADOR_DE_PEDIDO : (context) => const TelaCadastrarAcompanhadorDePedido(),
       RouteLevv.TELA_CADASTRAR_TRANSPORTADOR : (context) => const TelaCadastrarTransportador(),
      RouteLevv.TELA_CADASTRAR_CLIENTE : (context) => const TelaCadastrarCliente(),
      RouteLevv.TELA_CADASTRAR_LOJISTA : (context) => const TelaCadastrarLojista(),
      RouteLevv.TELA_CADASTRAR_ADMINISTRADOR : (context) => const TelaCadastrarAdministrador(),
      RouteLevv.TELA_ACOMPANHAR : (context) => const TelaAcompanhar(),

     },
     home: TelaSplash(),
    // home:TelaLocalizar(),
    // home:TelaHome(),
    // home:TelaEnviar(),                 //todo consertar erro de exibição de tela
    // home:TelaEntregar(),               //todo fazer tela
    // home:TelaCadastrarTransportador(), //todo continuar a criação de tela
    // home:TelaCadastrarLojista(),       //todo continuar a criação de tela
    // home:TelaCadastrarCliente(),       //todo continuar a criação de tela
    // home:TelaCadastrarAdministrador(),   //todo fazer tela
    // home:TelaCadastrarAcompanhadorDePedido(), //todo criar
    // home:TelaLocalizar(), //todo criar
    debugShowCheckedModeBanner: false,
  ));
}
