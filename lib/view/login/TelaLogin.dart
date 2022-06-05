import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:levv/controller/TelaLoginController.dart';
import 'package:levv/helper/AppColors.dart';
import 'package:levv/view/login/Campos/CampoEmail.dart';
import 'package:levv/view/login/Campos/CampoAbrirTelaCadastro.dart';
import 'Campos/CampoLogarOuLimpar.dart';
import 'Campos/CampoLogon.dart';
import 'Campos/CampoSenha.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLogiState();
}

class _TelaLogiState extends State<TelaLogin> {
  final TelaLoginController _controller = TelaLoginController();

  @override
  void initState() {
    super.initState();
    _controller.email.addListener(() => setState(() {}));
    _controller.senha.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    _controller.context = context;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CampoLogon(),
                CampoEmail(controller: _controller),
                CampoSenha(controller: _controller),
                CampoAbrirTelaCadastro(controller: _controller),
                CampoLogarOuLimpar(controller: _controller),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.APP_FUNDO,
    );
  }
}
