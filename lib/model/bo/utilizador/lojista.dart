import 'package:levv/model/bo/pedido/pedido.dart';
import 'package:levv/model/bo/usuario/celular.dart';
import 'package:levv/model/bo/usuario/perfil/perfil.dart';
import 'package:levv/model/bo/usuario/usuario.dart';

import '../endereco/endereco.dart';

class Lojista extends Usuario {
  List<Endereco>? enderecosFavoritos;
  String cnpj;
  String nomeFantasiaDaEmpresa;
  String nomeDaEmpresa;

  Lojista(Perfil perfil, Celular celular, this.enderecosFavoritos, this.cnpj,
      this.nomeFantasiaDaEmpresa, this.nomeDaEmpresa)
      : super(perfil, celular);
}
