import 'package:flutter/material.dart';
import 'package:levv/view/frontend/text_levv.dart';

import '../../../model/bo/pedido/Pedido.dart';
import '../../../model/bo/pedido/peso.dart';

class EnviarPeso extends StatefulWidget {
  EnviarPeso({Key? key, required this.pedido}) : super(key: key);

  Pedido pedido;

  @override
  State<EnviarPeso> createState() => _EnviarPesoState();
}

class _EnviarPesoState extends State<EnviarPeso> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text(
          TextLevv.PESO,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          width: 90,
          child: Card(
            child: DropdownButton(
                underline: Container(
                  color: Colors.brown,
                ),
                isExpanded: true,
                value: _valorAtual(),
                items: const [
                  DropdownMenuItem(
                    child: Text(Peso.PESO_1),
                    value: Peso.PESO_VALOR_1,
                  ),
                  DropdownMenuItem(
                    child: Text(Peso.PESO_5),
                    value: Peso.PESO_VALOR_5,
                  ),
                  DropdownMenuItem(
                    child: Text(Peso.PESO_10),
                    value: Peso.PESO_VALOR_10,
                  ),
                  DropdownMenuItem(
                    child: Text(Peso.PESO_15),
                    value: Peso.PESO_VALOR_15,
                  ),
                  DropdownMenuItem(
                    child: Text(Peso.PESO_20),
                    value: Peso.PESO_VALOR_20,
                  ),
                  DropdownMenuItem(
                    child: Text(Peso.PESO_25),
                    value: Peso.PESO_VALOR_25,
                  ),
                ],
                onChanged: (value) => _selecionarPeso(value),
          ),
        )
        )
      ],
    );
  }


  _selecionarPeso(var value){

    String valorNumerico = value.toString();

    int valor = int.parse(valorNumerico);

    setState(() {
      widget.pedido.peso.peso =valor;
    });
  }

  int _valorAtual(){
    if(widget.pedido.peso.peso == null ||
        widget.pedido.peso.peso == 0){
      widget.pedido.peso.peso = Peso.PESO_VALOR_1;
    }

    return widget.pedido.peso.peso;
  }

}
