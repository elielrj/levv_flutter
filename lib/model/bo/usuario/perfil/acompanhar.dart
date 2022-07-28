

import 'package:levv/model/bo/usuario/perfil/perfil.dart';

class Acompanhar implements Perfil{

  String tipo = Acompanhar.ACOMPANHAR;
  static const  ACOMPANHAR = "acompanhador";



  @override
  String exibirPerfil() {

      return "Acompanhador";

  }

}