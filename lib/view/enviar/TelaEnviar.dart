import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levv/helper/AppColors.dart';
import 'package:levv/view/enviar/campos/CampoButtonEnviarPedido.dart';
import 'package:levv/view/enviar/campos/CampoValorDoPedido.dart';
import 'campos/CampoButtonLimparPedido.dart';
import 'campos/CampoMeioDeTransporte.dart';
import 'campos/CampoPeso.dart';
import 'campos/CampoRotas.dart';
import 'campos/CampoVolume.dart';

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
              CampoPeso(),
              const CampoVolume(),
              const CampoMeioDeTransporte(),
              const CampoRotas(),
              const CampoValorDoPedido(),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CampoButtonEnviarPedido(),
                    CampoButtonLimparPedido(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
