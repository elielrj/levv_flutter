
import 'package:flutter/material.dart';
import 'package:levv/view/frontend/ColorsLevv.dart';


class TelaAcompanhar extends StatefulWidget {
  const TelaAcompanhar({Key? key}) : super(key: key);

  @override
  State<TelaAcompanhar> createState() => _TelaAcompanharState();
}

class _TelaAcompanharState extends State<TelaAcompanhar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsLevv.FUNDO,
        appBar: AppBar(
          title: const Text("Acompanhar um produto"),
        ),
        body: Container(child:Text("Tela Acompanhar")));
  }
}
