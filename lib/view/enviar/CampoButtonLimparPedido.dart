import 'package:flutter/material.dart';

class CampoButtonLimparPedido extends StatelessWidget {
  const CampoButtonLimparPedido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        textStyle: const TextStyle(color: Colors.black, fontSize: 18),
        padding: const EdgeInsets.all(0),
        minimumSize: const Size(180, 65),
        elevation: 2,
        primary: Colors.black,
        alignment: Alignment.center,
      ),
      onPressed: () {
        //todo limpar campos de um pedido//
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
    );
  }
}
