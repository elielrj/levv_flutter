
import 'package:flutter/material.dart';

import '../../../model/bo/pedido/Pedido.dart';

class EnviarPeso extends StatefulWidget {
   EnviarPeso({Key? key, required this.pedido}) : super(key: key);

  Pedido pedido;

  @override
  State<EnviarPeso> createState() => _EnviarPesoState();
}

class _EnviarPesoState extends State<EnviarPeso> {

  int _peso = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "PESO",
          style: TextStyle(fontSize: 16),
        ),
        Card(
          child: DropdownButton(
              underline: Container(
                color: Colors.brown,
              ),
              isExpanded: true,
              value: 1,
              items: const [
                DropdownMenuItem(
                  child: Text("Até 1 Kg"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Até 5 Kg"),
                  value: 5,
                ),
                DropdownMenuItem(
                  child: Text("Até 10 Kg"),
                  value: 10,
                ),
                DropdownMenuItem(
                  child: Text("Até 15 Kg"),
                  value: 15,
                ),
                DropdownMenuItem(
                  child: Text("Até 20 Kg"),
                  value: 20,

                ),
              ],
              onChanged: (peso) {
                print("Peso: ${peso.toString()} ");
                _selecionarPeso(int.parse(peso.toString()));
    }


          ), //todo criar função de peso
        )
      ],
    );


  }

  _selecionarPeso(int peso){


    _peso = peso;
  }


}