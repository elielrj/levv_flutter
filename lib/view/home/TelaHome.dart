import 'package:flutter/material.dart';
import 'package:levv/helper/AppColors.dart';
import 'package:levv/view/login/Campos/CampoLogon.dart';

import '../enviar/TelaEnviar.dart';
import 'Campos/CampoButtonProdutoAcompanhar.dart';
import 'Campos/CampoButtonProdutoEntregar.dart';
import 'Campos/CampoButtonProdutoEnviar.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.APP_FUNDO,
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.format_align_justify),
            SizedBox(
              width: 10,
            ),
            Text("LEVV"),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        actions: const [
          Icon(Icons.apps),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
          padding: const EdgeInsets.only(bottom: 57),
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                CampoLogon(),
                CampoButtonProdutoEntregar(),
                CampoButtonProdutoEnviar(),
                CampoButtonProdutoAcompanhar(),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        elevation: 5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TelaEnviar())),
      ),
    );
  }
}
