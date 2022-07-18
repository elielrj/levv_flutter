import 'package:flutter/material.dart';
import 'package:levv/model/bo/meioDeTransprte/MeioDeTransporte.dart';
import 'package:levv/model/dao/meioDeTransporte/MeioDeTransporteDAO.dart';
import 'package:levv/view/frontend/text_levv.dart';

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
        const Text(TextLevv.MEIO_DE_TRANSPORTE, style: TextStyle(fontSize: 16)),
        SizedBox(
          width: 120,
          child: Card(
            child: DropdownButton(
              underline: Container(
                color: Colors.brown,
              ),
              isExpanded: true,
              value: _meioDeTransporteAtual(),
              items: const [
                DropdownMenuItem(
                  child: Text(MeioDeTransporte.A_PE),
                  value: MeioDeTransporte.A_PE_VALOR,
                ),
                DropdownMenuItem(
                  child: Text(MeioDeTransporte.BIKE),
                  value: MeioDeTransporte.BIKE_VALOR,
                ),
                DropdownMenuItem(
                  child: Text(MeioDeTransporte.MOTO),
                  value: MeioDeTransporte.MOTO_VALOR,
                ),
                DropdownMenuItem(
                  child: Text(MeioDeTransporte.CARRO),
                  value: MeioDeTransporte.CARRO_VALOR,
                ),
              ],
              onChanged: (value) => _selecionarMeioDeTransporte(value),
            ),
          ),
        )
      ],
    );
  }

  _selecionarMeioDeTransporte(var value) {
    setState(() {
      widget.pedido.meioDeTransporte.descricao =
          MeioDeTransporte.buscarMeioDeTransportePeloValor(
              int.parse(value.toString()));
    });
  }

  int _meioDeTransporteAtual() {
    if (widget.pedido.meioDeTransporte.descricao == null ||
        widget.pedido.meioDeTransporte.descricao == "") {
      widget.pedido.meioDeTransporte.descricao = MeioDeTransporte.MOTO;
    }

    return MeioDeTransporte.buscarValorDoMeioDeTransporte(
        widget.pedido.meioDeTransporte.descricao.toString());
  }
}
