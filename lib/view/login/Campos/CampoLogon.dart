
import 'package:flutter/material.dart';

class CampoLogon extends StatelessWidget {
  const CampoLogon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "imagens/logo_levv.png",
          width: 90,
        ),
      ),
    );
  }
}
