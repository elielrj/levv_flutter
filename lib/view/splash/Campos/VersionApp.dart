
import 'package:flutter/material.dart';
import 'package:levv/view/splash/TelaSplash.dart';

import '../../../helper/AppColors.dart';

class VersionApp extends StatelessWidget {
  const VersionApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Text(
        "Versão 2.0",
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: AppColors.APP_TEXTO),
      ),
    );
  }
}
