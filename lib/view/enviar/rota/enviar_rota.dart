import 'package:flutter/material.dart';
import 'package:levv/model/bo/pedido/item_do_pedido.dart';
import 'package:levv/view/enviar/rota/item/enviar_rota_item_do_pedido.dart';
import 'package:levv/view/frontend/colors_levv.dart';

import '../../../model/bo/endereco/endereco.dart';
import '../../../model/bo/pedido/pedido.dart';
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
              for (int index = 0;
                  index < widget.pedido.itensDoPedido.length;
                  index++)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EnviarRotaItemDoPedido(
                          itemDoPedido: widget.pedido.itensDoPedido[index]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () => _adicionaItem(),
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            iconSize: 25,
                          ),
                          IconButton(
                            icon: const Icon(Icons.remove),
                            color: Colors.red,
                            onPressed: () => _removerItem(index),
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            iconSize: 25,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }

  //1
  _adicionaItem() {
    if (widget.pedido.itensDoPedido.length < 10) {
      setState(() {

        ItemDoPedido itemDoPedido = ItemDoPedido.VAZIO;

        //todo reparar probema de ordem identica
        itemDoPedido.ordem = widget.pedido.itensDoPedido.length + 1;

        widget.pedido.itensDoPedido.add(itemDoPedido);

      });
    } else {
      _exibirMensagemDeErroAoAdicionarItem();
    }
  }

  //2
  _removerItem(int index) {
    if (widget.pedido.itensDoPedido.length > 1) {
      setState(() {
        widget.pedido.itensDoPedido.removeAt(index);
      });
    } else {
      _exibirMensagemDeErroAoTentarRemoverTodosOsItens();
    }
  }

  //3
  _exibirMensagemDeErroAoAdicionarItem() {
//todo 1 - mensagem de erro
  }

  //4
  _exibirMensagemDeErroAoTentarRemoverTodosOsItens() {
//todo 2 - mensagem de erro
  }
}
