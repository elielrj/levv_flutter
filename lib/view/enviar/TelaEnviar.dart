import 'package:flutter/material.dart';
import 'package:levv/helper/AppColors.dart';
import 'package:levv/view/enviar/CampoButtonEnviarPedido.dart';
import 'package:levv/view/enviar/CampoRotas.dart';
import 'package:levv/view/enviar/CampoValorDoPedido.dart';

import '../../model/peso/Peso.dart';
import 'CampoButtonLimparPedido.dart';
import 'CompoMeioDeTransporte.dart';
import 'CompoPeso.dart';
import 'CompoVolume.dart';

class TelaEnviar extends StatefulWidget {
  const TelaEnviar({Key? key}) : super(key: key);

  @override
  State<TelaEnviar> createState() => _TelaEnviarState();
}

class _TelaEnviarState extends State<TelaEnviar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.APP_FUNDO,
      appBar: AppBar(
        title: const Text("Enviar um produto"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CompoPeso(),
              CompoVolume(),
              CompoMeioDeTransporte(),
              CampoRotas(),
              CampoValorDoPedido(),
              Row(
                children: const [
                  CampoButtonEnviarPedido(),
                  CampoButtonLimparPedido(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
