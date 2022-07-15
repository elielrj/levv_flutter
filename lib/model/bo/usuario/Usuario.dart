import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';

import '../endereco/Endereco.dart';

abstract class Usuario {
  late String _celular;
  late bool _status;

  late TipoDeUsuario _tipoDeUsuario;

  late Endereco _enderecoCasa;
  late Endereco _enderecoTrabalho;
  late List<Endereco> _enderecosFavoritos;

  late List<Pedido> _listaDePedidos;

  String get celular => _celular;

  bool get status => _status;

  TipoDeUsuario get tipoDeUsuario => _tipoDeUsuario;

  Endereco get enderecoCasa => _enderecoCasa;

  Endereco get enderecoTrabalho => _enderecoTrabalho;

  List<Endereco> get enderecosFavoritos => _enderecosFavoritos;

  set celular(String value) {
    _celular = value;
  }

  List<Pedido> get listaDePedidos => _listaDePedidos;

  set status(bool value) {
    _status = value;
  }

  set tipoDeUsuario(TipoDeUsuario value) {
    _tipoDeUsuario = value;
  }

  set enderecoCasa(Endereco value) {
    _enderecoCasa = value;
  }

  set enderecoTrabalho(Endereco value) {
    _enderecoTrabalho = value;
  }

  set enderecosFavoritos(List<Endereco> value) {
    _enderecosFavoritos = value;
  }

  set listaDePedidos(List<Pedido> value) {
    _listaDePedidos = value;
  }
}
