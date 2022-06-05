
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:levv/view/home/TelaHome.dart';
import '../../../helper/PreferencesLevv.dart';
import '../../login/TelaLogin.dart';

class SplashProgress extends StatelessWidget {
  const SplashProgress({Key? key}) : super(key: key);

  static Timer iniciarProgresso(BuildContext context) {
    return Timer(Duration(seconds: 5), () async {
      final bool usuarioEstaCadastrdo =
          await PreferencesLevv.usuarioEstaCadastrado();

      if (usuarioEstaCadastrdo == true) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaHome(),
            ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaLogin(),
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(Colors.white),
      strokeWidth: 5,
    );
  }
}
