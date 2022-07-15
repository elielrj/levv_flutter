
import 'package:flutter/material.dart';

import '../../../model/bo/pedido/Pedido.dart';

class EnviarValor extends StatefulWidget {
  EnviarValor({Key? key, required this.pedido}) : super(key: key);

  Pedido pedido;

  @override
  State<EnviarValor> createState() => _EnviarValorState();
}

class _EnviarValorState extends State<EnviarValor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("VALOR"),
          TextField(
            enabled: false,
            decoration: InputDecoration(
                labelStyle: TextStyle(backgroundColor: Colors.white),
                labelText: "Valor",
                prefixIcon: Icon(Icons.monetization_on),
                fillColor: Colors.white,
                filled: true),
          ),
        ],
      ),
    );
  }
}
