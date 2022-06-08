
import 'package:flutter/material.dart';
import '../../../helper/AppColors.dart';

class NameApp extends StatelessWidget {
  const NameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        "LEVV",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: AppColors.APP_TEXTO),
      ),
    );
  }
}
