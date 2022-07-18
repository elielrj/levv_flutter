import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levv/view/enviar/botao/enviar_botao.dart';
import 'package:levv/view/enviar/meio_de_transporte/enviar_meio_de_transporte.dart';
import 'package:levv/view/enviar/peso/enviar_peso.dart';
import 'package:levv/view/enviar/rota/enviar_rota.dart';
import 'package:levv/view/enviar/valor/enviar_valor.dart';
import 'package:levv/view/enviar/volume/enviar_volume.dart';
import 'package:levv/view/frontend/colors_levv.dart';
import 'package:levv/view/frontend/text_levv.dart';

import '../../model/bo/pedido/Pedido.dart';

class TelaEnviar extends StatefulWidget {
  const TelaEnviar({Key? key}) : super(key: key);

  @override
  State<TelaEnviar> createState() => _TelaEnviarState();
}

class _TelaEnviarState extends State<TelaEnviar> {

  final Pedido pedido = PedidoBuilder().create();

  final valor = 0.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLevv.FUNDO,
      appBar: AppBar(
        title: const Text(TextLevv.ENVIAR_UM_PRODUTO),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //1
                    EnviarPeso(
                      pedido: pedido,
                    ),
                    //2
                    EnviarVolume(
                      pedido: pedido,
                    ),
                    //3
                    EnviarMeioDeTransporte(pedido: pedido),
                  ],
                ),
              ),

              //4
              EnviarRota(
                pedido: pedido,
              ),
              //5
              EnviarValor(pedido: pedido),
              //6
              EnviarBotao(
                pedido: pedido,
              )
            ],
          ),
        ),
      ),
    );
  }
}
