import 'package:flutter/material.dart';
import 'package:levv/view/splash/TelaSplash.dart';

import '../../../helper/AppColors.dart';

class NameApp extends StatelessWidget {
  const NameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        TelaSplash.APP_NAME,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: AppColors.APP_TEXTO),
      ),
    );
  }
}
