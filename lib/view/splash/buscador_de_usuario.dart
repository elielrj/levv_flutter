import 'dart:async';

import 'package:levv/model/bo/utilizador/Administrador.dart';
import 'package:levv/model/bo/utilizador/Cliente.dart';
import 'package:levv/model/bo/utilizador/Lojista.dart';
import 'package:levv/model/bo/utilizador/Transportador.dart';
import '../../model/bo/usuario/TipoDeUsuario.dart';
import '../../model/bo/utilizador/AcompanhadorDePedido.dart';
import 'package:levv/model/dao/backend/PreferencesLevv.dart';

class BuscadorDeUsuario {

  final PreferencesLevv _preferencesLevv = PreferencesLevv();

  //1
  Future<bool> verificarSeUsuarioEstaCadastrado() async {

    String _celular = await _preferencesLevv.buscarCelular();

    if (_celular != "") {
      return true;
    }
    return false;
  }


  //2
  Future<dynamic> buscarUsuarioCadastrado() async {

    TipoDeUsuario _tipoDeUsuario = await _preferencesLevv.buscarTipoDeUsuario();

    switch (_tipoDeUsuario.tipo) {

      case TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO:
        return await _recuperarUsuarioDoTipoAcompanhadorDoPedido();
      case TipoDeUsuario.ADMINISTRADOR:
        return await _recuperarUsuarioDoTipoAdministrador();
      case TipoDeUsuario.CLIENTE:
        return await _recuperarUsuarioDoTipoCliente();
      case TipoDeUsuario.TRANSPORTADOR:
        return await _recuperarUsuarioDoTipoTransportador();
      case TipoDeUsuario.LOJISTA:
        return await _recuperarUsuarioDoTipoLojista();
    }
  }

  //3 todo retirar p/ dao
  Future<AcompanhadorDePedido>
      _recuperarUsuarioDoTipoAcompanhadorDoPedido() async {
    //todo criar DAO
    return AcompanhadorDePedidoBuilder().create();
  }

  //4 todo retirar p/ dao
  Future<Administrador> _recuperarUsuarioDoTipoAdministrador() async {
    //todo criar DAO
    return AdministradorBuilder().create();
  }

  //5 todo retirar p/ dao
  Future<Cliente> _recuperarUsuarioDoTipoCliente() async {
    //todo criar DAO
    return ClienteBuilder().create();
  }

  //6 todo retirar p/ dao
  Future<Transportador> _recuperarUsuarioDoTipoTransportador() async {
    //todo criar DAO
    return TransportadorBuilder().create();
  }

  //7 todo retirar p/ dao
  Future<Lojista> _recuperarUsuarioDoTipoLojista() async {
    //todo criar DAO
    return LojistaBuilder().create();
  }
}
