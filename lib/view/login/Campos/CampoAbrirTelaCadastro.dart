import 'package:flutter/material.dart';

import '../../../controller/TelaLoginController.dart';

class CampoAbrirTelaCadastro extends StatelessWidget {
  final TelaLoginController controller;
  const CampoAbrirTelaCadastro({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: GestureDetector(
        onTap: () => controller.navegarParaTelaCadastro(),
        child: const Text(
          "Ainda não é cadastrado? clique aqui!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
