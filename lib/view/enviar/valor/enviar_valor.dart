
import 'package:flutter/material.dart';

import '../../../model/bo/pedido/pedido.dart';

class EnviarValor extends StatefulWidget {
  EnviarValor({Key? key, required this.pedido}) : super(key: key);

  Pedido pedido;

  @override
  State<EnviarValor> createState() => _EnviarValorState();
}

class _EnviarValorState extends State<EnviarValor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text("VALOR"),
        TextField(
          enabled: false,
          decoration: InputDecoration(
              labelStyle: TextStyle(backgroundColor: Colors.white),
              labelText: "R\$ 0.0",
              prefixIcon: Icon(Icons.monetization_on),
              fillColor: Colors.white,
              filled: true),
        ),
      ],
    );
  }


  void _calcularPedido(){
    //CalculadoraDeValorDePedido calculadoraDeValorDePedido = CalculadoraDeValorDePedido();

    //calculadoraDeValorDePedido.calcular(widget.pedido);
  }
}
