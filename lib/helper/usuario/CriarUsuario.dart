import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/home/TelaHome.dart';
import '../PreferencesLevv.dart';
import '../ErroFirebaseAuth.dart';

class CriarUsuario {



  static Future<void> criarUsuarioComEmailESenha(
  BuildContext context, String email, String password) async {

    await WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp();


    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) async {

      await PreferencesLevv.salvarEmailESenha(email, password);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const TelaHome()));

    }).catchError((onError) {
      ErroFirebaseAuth.exibirErro(context, onError);
    });
  }
}
