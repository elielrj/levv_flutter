import 'package:flutter/material.dart';
import 'package:levv/helper/AppColors.dart';
import 'package:levv/view/login/Campos/CampoLogon.dart';

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
          children: [
            const Icon(Icons.format_align_justify),

            const SizedBox(width: 10,),

            const Text("LEVV"),
            const SizedBox(width: 10,),

          ],
        ),

        actions: [
          Icon(Icons.apps),
          const SizedBox(width: 10,)
        ],
      ),
      body: Container(
          padding: const EdgeInsets.only(bottom: 36),
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
    );


  }
}
