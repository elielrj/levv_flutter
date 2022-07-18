import 'package:flutter/material.dart';
import 'package:levv/model/bo/pedido/volume.dart';

import '../../../model/bo/pedido/Pedido.dart';

class EnviarVolume extends StatefulWidget {
  EnviarVolume({Key? key, required this.pedido}) : super(key: key);

  Pedido pedido;

  @override
  State<EnviarVolume> createState() => _EnviarVolumeState();
}

class _EnviarVolumeState extends State<EnviarVolume> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text("VOLUME", style: TextStyle(fontSize: 16)),
        SizedBox(
          width: 90,
          child: Card(
            child: DropdownButton(
              underline: Container(
                color: Colors.brown,
              ),
              isExpanded: true,
              value: _valorAtual(),
              items: const [
                DropdownMenuItem(
                  child: Text(Volume.VOLUME_20_POR_20),
                  value: Volume.VOLUME_VALOR_20_POR_20,
                ),
                DropdownMenuItem(
                  child: Text(Volume.VOLUME_40_POR_40),
                  value: Volume.VOLUME_VALOR_40_POR_40,
                ),
                DropdownMenuItem(
                  child: Text(Volume.VOLUME_60_POR_60),
                  value: Volume.VOLUME_VALOR_60_POR_60,
                ),
              ],
              onChanged: (value) => _selecionarVolume(value),
            ),
          ),
        ),
      ],
    );
  }

  _selecionarVolume(var value) {
    setState(() {
      widget.pedido.volume.volume = int.parse(value.toString());
    });
  }

  int _valorAtual() {
    if(widget.pedido.volume.volume == null ||
        widget.pedido.volume.volume == 0){
      widget.pedido.volume.volume = Volume.VOLUME_VALOR_20_POR_20;
    }
    return widget.pedido.volume.volume;
  }
}
