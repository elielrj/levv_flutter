
import 'package:flutter/material.dart';

import '../../../model/bo/pedido/Pedido.dart';

class EnviarMeioDeTransporte extends StatefulWidget {
  EnviarMeioDeTransporte({Key? key, required this.pedido}) : super(key: key);

  Pedido pedido;

  @override
  State<EnviarMeioDeTransporte> createState() => _EnviarMeioDeTransporteState();
}

class _EnviarMeioDeTransporteState extends State<EnviarMeioDeTransporte> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text("MEIO DE TRANSPORTE",
            style: TextStyle(fontSize: 16)),

        Card(
          child: DropdownButton(
              underline: Container(
                color: Colors.brown,
              ),
              isExpanded: true,
              value: "moto",
              items: const [

                DropdownMenuItem(
                  child: Text("Moto"),
                  value: "moto",
                ),
                DropdownMenuItem(
                  child: Text("Bike"),
                  value: "bike",
                ),
                DropdownMenuItem(
                  child: Text("Carro"),
                  value: "carro",
                ),
              ],
              onChanged: (value) => setState(() {
                widget.pedido.meioDeTransporte.descricao = value.toString();
              })),
        )

      ],
    );
  }


}