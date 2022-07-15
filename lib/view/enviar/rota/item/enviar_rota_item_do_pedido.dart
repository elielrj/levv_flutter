import 'package:flutter/material.dart';
import 'package:levv/model/bo/pedido/ItemDoPedido.dart';
import 'package:levv/view/frontend/text_levv.dart';

import '../../../../model/bo/endereco/Endereco.dart';

class EnviarRotaItemDoPedido extends StatefulWidget {
   EnviarRotaItemDoPedido({Key? key, required this.itemDoPedido}) : super(key: key);

   ItemDoPedido itemDoPedido;

  @override
  State<EnviarRotaItemDoPedido> createState() => _EnviarRotaItemDoPedidoState();
}

class _EnviarRotaItemDoPedidoState extends State<EnviarRotaItemDoPedido> {

  final _controllerColeta = TextEditingController();
  final _controllerEntrega = TextEditingController();


  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        _entrega(widget.itemDoPedido.entrega),
        _coleta(widget.itemDoPedido.coleta),
      ],
    );


  }



  Widget _entrega(Endereco endereco) =>  TextField(
    controller: _controllerEntrega,
onChanged: _printEntrega(),
    keyboardType: TextInputType.streetAddress,


    decoration: const InputDecoration(
        labelStyle: TextStyle(backgroundColor: Colors.white),
        labelText: TextLevv.ENDERECO_ENTREGA,
        prefixIcon: Icon(Icons.email_outlined),
        fillColor: Colors.white,
        filled: true),
  );

  Widget _coleta(Endereco endereco) =>  TextField(
    controller: _controllerColeta,
    onChanged: _printColeta(),
    keyboardType: TextInputType.streetAddress,
    decoration: const InputDecoration(
        labelStyle: TextStyle(backgroundColor: Colors.white),
        labelText: TextLevv.ENDERECO_COLETA,
        prefixIcon: Icon(Icons.email_outlined),
        fillColor: Colors.white,
        filled: true),
  );

  _printColeta(){


      print("print: " + _controllerColeta.text.toString());

  }

  _printEntrega(){
    print("print: " + _controllerEntrega.text.toString());
  }
}


