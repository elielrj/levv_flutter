
import 'package:flutter/material.dart';
import 'package:levv/view/frontend/ColorsLevv.dart';


class TelaEntregar extends StatefulWidget {
  const TelaEntregar({Key? key}) : super(key: key);

  @override
  State<TelaEntregar> createState() => _TelaEntregarState();
}

class _TelaEntregarState extends State<TelaEntregar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Entregar um produto"),
        ),
      backgroundColor: ColorsLevv.FUNDO,
      body: Container(child:Text("Tela Entregar")));
  }
}
