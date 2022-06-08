
import 'package:flutter/material.dart';


class CampoPedido extends StatefulWidget {
  const CampoPedido({Key? key}) : super(key: key);

  @override
  State<CampoPedido> createState() => _CampoPedidoState();
}

class _CampoPedidoState extends State<CampoPedido> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("NÚMERO DO PEDIDO"),
          Text("NÚMERO DO PEDIDO"),
        ],
      ),
    );
  }
}

