import 'package:flutter/material.dart';
import 'package:levv/model/bo/pedido/ItemDoPedido.dart';
import 'package:levv/view/enviar/rota/item/enviar_rota_item_do_pedido.dart';

import '../../../model/bo/endereco/Endereco.dart';
import '../../../model/bo/pedido/Pedido.dart';
import '../../frontend/text_levv.dart';

class EnviarRota extends StatefulWidget {
  EnviarRota({Key? key, required this.pedido}) : super(key: key);

  Pedido pedido;

  @override
  State<EnviarRota> createState() => _EnviarRotaState();
}

class _EnviarRotaState extends State<EnviarRota> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Column(
        children: [
          const Text(TextLevv.ROTA),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var i = 0; i < widget.pedido.itensDoPedido.length; i++)
                Card(
                  child: EnviarRotaItemDoPedido(itemDoPedido: widget.pedido.itensDoPedido[i]),
                )
            ],
          )
        ],
      ),
    );
  }
}
