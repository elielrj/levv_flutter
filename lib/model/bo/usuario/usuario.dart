import 'package:levv/model/bo/usuario/celular.dart';
import 'package:levv/model/bo/usuario/perfil/perfil.dart';

abstract class Usuario{

  Perfil perfil;
  Celular celular;

  Usuario(this.perfil, this.celular);
}
