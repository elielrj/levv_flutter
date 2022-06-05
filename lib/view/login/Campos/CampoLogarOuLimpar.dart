import 'package:flutter/material.dart';
import 'package:levv/controller/TelaLoginController.dart';

import 'CampoButtunLimpar.dart';
import 'CampoButtonLogin.dart';


class CampoLogarOuLimpar extends StatelessWidget {
  const CampoLogarOuLimpar({Key? key, required this.controller}) : super(key: key);
  final TelaLoginController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CampoButtonLogin(controller: controller),
        CampoButtunLimpar(controller: controller),
      ],
    );
  }
}
