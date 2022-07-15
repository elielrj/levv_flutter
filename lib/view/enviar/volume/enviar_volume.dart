
import 'package:flutter/material.dart';

import '../../../model/bo/pedido/Pedido.dart';

class EnviarVolume extends StatefulWidget {
   EnviarVolume({Key? key, required this.pedido}) : super(key: key);

   Pedido pedido;

  @override
  State<EnviarVolume> createState() => _EnviarVolumeState();
}

class _EnviarVolumeState extends State<EnviarVolume> {

  int _volume = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("VOLUME", style: TextStyle(fontSize: 16)),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset("imagens/icon_medium_volume.png",
                      height: 15),
                  Radio(
                      value: 40,
                      groupValue: 0,
                      onChanged: (value) => setState(() {
                        _volume = int.parse(value.toString());
                      })),
                  Text("40 x 40"),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "imagens/icon_medium_volume.png",
                    height: 15,
                  ),
                  Radio(
                      value: 20,
                      groupValue: 0,
                      onChanged: (value) => setState(() {
                        _volume = int.parse(value.toString());
                      })),
                  Text("20 X 20"),
                ],
              ),
              Row(
                children: [
                  Image.asset("imagens/icon_medium_volume.png",
                      height: 15),
                  Radio(
                      value: 60,
                      groupValue: 0,
                      onChanged: (value) => setState(() {
                        _volume = int.parse(value.toString());
                      })),
                  Text("60 x 60"),
                ],
              )
            ]),
      ],
    );
  }
}