import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/peso/Peso.dart';

class CompoPeso extends StatefulWidget {
  @override
  State<CompoPeso> createState() => CompoPesoState();
}

class CompoPesoState extends State<CompoPeso> {
  final Peso _peso = Peso();

  setSelect(var value) {
    setState(() {
      _peso.setSelectedPeso(int.parse(value.toString()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const Text("PESO", style: TextStyle(fontSize: 16),),
          DropdownButton(
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
              onChanged: (value) => setSelect(value))
        ],
      ),
    );
  }
}
