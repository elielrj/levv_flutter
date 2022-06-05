import 'package:flutter/material.dart';

import '../../model/meioDeTransprte/MeioDeTransporte.dart';

class CompoMeioDeTransporte extends StatefulWidget {
  const CompoMeioDeTransporte({Key? key}) : super(key: key);

  @override
  State<CompoMeioDeTransporte> createState() =>
      _CompoMeioDeTransporteState();
}

class _CompoMeioDeTransporteState
    extends State<CompoMeioDeTransporte> {
  final MeioDeTransporte _meioDeTransporte = MeioDeTransporte();

  setSelect(var value) {
    setState(() {
      _meioDeTransporte
          .setSelectedMeioDeTransporte(int.parse(value.toString()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const Text("Meio de MEIO DE TRANSPORTE",
              style: TextStyle(fontSize: 16)),
          DropdownButton(
              underline: Container(
                color: Colors.brown,
              ),
              isExpanded: true,
              value: _meioDeTransporte.selectedMeioDeTransporte,
              items: [
                DropdownMenuItem(
                  child: Text(MeioDeTransporte.MEIO_DE_TRANSPORTE_MOTO),
                  value: MeioDeTransporte.MOTO,
                ),
                DropdownMenuItem(
                  child: Text(MeioDeTransporte.MEIO_DE_TRANSPORTE_BIKE),
                  value: MeioDeTransporte.BIKE,
                ),
                DropdownMenuItem(
                  child: Text(MeioDeTransporte.MEIO_DE_TRANSPORTE_CARRO),
                  value: MeioDeTransporte.CARRO,
                ),
              ],
              onChanged: (value) => setSelect(value))
        ],
      ),
    );
  }
}
