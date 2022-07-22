import 'package:flutter/material.dart';
import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:levv/model/bo/usuario/usuario.dart';

import 'celular.dart';

abstract class UsuarioPadrao implements Usuario {
  late Celular celular;
  late TipoDeUsuario tipoDeUsuario;
}


