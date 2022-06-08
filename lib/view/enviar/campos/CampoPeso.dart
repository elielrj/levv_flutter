import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levv/view/enviar/campos/peso/Peso.dart';


class CampoPeso extends StatefulWidget {
  @override
  State<CampoPeso> createState() => CampoPesoState();
}

class CampoPesoState extends State<CampoPeso> {
  final Peso _peso = Peso();

  setSelect(var value) {
    setState(() {
      _peso.setSelectedPeso(int.parse(value.toString()));
    });
  }

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
              value: _peso.selectedPeso,
              items: [
                DropdownMenuItem(
                  child: Text(Peso.PESO_1_KG),
                  value: Peso.PESO_1,
                ),
                DropdownMenuItem(
                  child: Text(Peso.PESO_5_KG),
                  value: Peso.PESO_5,
                ),
                DropdownMenuItem(
                  child: Text(Peso.PESO_10_KG),
                  value: Peso.PESO_10,
                ),
                DropdownMenuItem(
                  child: Text(Peso.PESO_15_KG),
                  value: Peso.PESO_15,
                ),
                DropdownMenuItem(
                  child: Text(Peso.PESO_20_KG),
                  value: Peso.PESO_20,
                ),
              ],
              onChanged: (value) => setSelect(value)),
        )
      ],
    );
  }
}
