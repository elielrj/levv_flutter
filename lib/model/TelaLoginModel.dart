import 'dart:ffi';

import 'package:flutter/material.dart';

class TelaLoginModel{

  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();
  bool _senhaVisivel = false;
  String _mensagemDeErro = "";

  TextEditingController get email => _email;

  TextEditingController get senha => _senha;

  String get mensagemDeErro => _mensagemDeErro;

  set mensagemDeErro(String value) {
    _mensagemDeErro = value;
  }

  set senhaVisivel(bool value) {
    _senhaVisivel = value;
  }

  bool get senhaVisivel => _senhaVisivel;
}