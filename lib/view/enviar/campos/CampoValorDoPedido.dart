import 'package:flutter/material.dart';

class CampoValorDoPedido extends StatefulWidget {
  const CampoValorDoPedido({Key? key}) : super(key: key);

  @override
  State<CampoValorDoPedido> createState() => _CampoValorDoPedidoState();
}

class _CampoValorDoPedidoState extends State<CampoValorDoPedido> {
  @override
  Widget build(BuildContext context) {
    //todo criar campo
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
