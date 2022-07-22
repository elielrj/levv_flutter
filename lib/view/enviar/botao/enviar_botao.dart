
import 'package:flutter/material.dart';

import '../../../model/bo/pedido/pedido.dart';
import '../../../model/dao/pedido/pedidoDAO.dart';

class EnviarBotao extends StatefulWidget {
   EnviarBotao({Key? key, required this.pedido}) : super(key: key);

   Pedido pedido;

  @override
  State<EnviarBotao> createState() => _EnviarBotaoState();
}

class _EnviarBotaoState extends State<EnviarBotao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              textStyle:
              const TextStyle(color: Colors.black, fontSize: 18),
              padding: const EdgeInsets.all(0),
              minimumSize: const Size(180, 65),
              elevation: 2,
              primary: Colors.black,
              alignment: Alignment.center,
            ),
            onPressed: () {
              //todo enviar campos de um pedido//
              _enviarPedido();
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  widthFactor: 1,
                  child: Image.asset(
                    "imagens/icon_register.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                const Center(
                  widthFactor: 2,
                  child: Text("Enviar"),
                ),
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              textStyle:
              const TextStyle(color: Colors.black, fontSize: 18),
              padding: const EdgeInsets.all(0),
              minimumSize: const Size(180, 65),
              elevation: 2,
              primary: Colors.black,
              alignment: Alignment.center,
            ),
            onPressed: () {
              //todo limpar campos de um pedido// verificar se deu certo
              widget.pedido.limparPedido();
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  widthFactor: 1,
                  child: Image.asset(
                    "imagens/icon_trash.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                const Center(
                  widthFactor: 2,
                  child: Text("Limpar"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
//1
  _navegarParaTelaAcompanharPedido(){

  }

  //2
  _enviarPedido() async {

    if(await _criarPedido()){
      _navegarParaTelaAcompanharPedido();
    }else{
      _exibirMensagemDeErro();
    }
  }

  //3
  Future<bool> _criarPedido()async {
    try {
      PedidoDAO pedidoDAO = PedidoDAO();
       pedidoDAO.create(widget.pedido);
      return true;
    }catch(e){
      return false;
    }
  }

  //4
  _exibirMensagemDeErro(){

  }
}