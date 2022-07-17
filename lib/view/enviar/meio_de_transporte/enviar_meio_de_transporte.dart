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

   late final List<MeioDeTransporte> _listaDeMeiosDeTransporte;

  @override
  Widget build(BuildContext context) {

    _buscarMeiosDeTransporte();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text(TextLevv.MEIO_DE_TRANSPORTE, style: TextStyle(fontSize: 16)),
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
        ),

      ],
    );
  }

  Future<void> _buscarMeiosDeTransporte() async {
    //todo 3 - DAO p/ meio de transp
    MeioDeTransporteDAO meioDeTransporteDAO = MeioDeTransporteDAO();
    _listaDeMeiosDeTransporte = await meioDeTransporteDAO.retrive();
  }

  Widget _menuItem(MeioDeTransporte meioDeTransporte) => DropdownMenuItem(
        child: Text(meioDeTransporte.descricao),
        value: meioDeTransporte
            .buscarValorDoMeioDeTransporte(meioDeTransporte.descricao),
      );

}
