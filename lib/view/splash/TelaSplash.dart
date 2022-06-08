// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:levv/helper/AppColors.dart';
import 'package:levv/helper/PreferencesLevv.dart';
import 'package:levv/view/login/Campos/CampoLogon.dart';
import 'package:levv/view/splash/Campos/NameApp.dart';
import 'package:levv/view/splash/Campos/VersionApp.dart';

import 'Campos/SplashProgress.dart';

class TelaSplash extends StatefulWidget {
  const TelaSplash({Key? key}) : super(key: key);

  @override
  State<TelaSplash> createState() => _TelaSplashState();
}

class _TelaSplashState extends State<TelaSplash> {
  @override
  void initState() {
    super.initState();
    SplashProgress.iniciarProgresso(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.APP_FUNDO,
      body: Container(
        color: AppColors.APP_FUNDO,
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CampoLogon(),
              NameApp(),
              VersionApp(),
              SplashProgress(),
            ],
          ),
        ),
      ),
    );
  }
}
