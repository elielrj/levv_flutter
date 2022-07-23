import 'package:flutter/material.dart';
import 'package:levv/model/bo/pedido/volume.dart';
import 'package:levv/view/frontend/text_levv.dart';

import '../../../model/bo/pedido/pedido.dart';

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
        const Text(TextLevv.VOLUME, style: TextStyle(fontSize: 16)),
        SizedBox(
          width: 90,
          child: Card(
            child: DropdownButton(
              underline: Container(
                color: Colors.brown,
              ),
              isExpanded: true,
              value: _volumeAtual(),
              items: const [
                DropdownMenuItem(
                  child: Text(
                    Volume.VOLUME_20_POR_20,
                    textAlign: TextAlign.center,
                  ),
                  value: Volume.VOLUME_VALOR_20_POR_20,
                ),
                DropdownMenuItem(
                  child: Text(Volume.VOLUME_40_POR_40,
                      textAlign: TextAlign.center),
                  value: Volume.VOLUME_VALOR_40_POR_40,
                ),
                DropdownMenuItem(
                  child: Text(Volume.VOLUME_60_POR_60,
                      textAlign: TextAlign.center),
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
      widget.pedido.volume.valor = int.parse(value.toString());
    });
  }

  int _volumeAtual() {
    if (widget.pedido.volume.valor == null ||
        widget.pedido.volume.valor == 0) {
      widget.pedido.volume.valor = Volume.VOLUME_VALOR_20_POR_20;
    }
    return widget.pedido.volume.valor;
  }
}
