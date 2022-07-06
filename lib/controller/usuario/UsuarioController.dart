
import 'package:flutter/material.dart';
import 'package:levv/controller/utilizador/AcompanhadorDePedidoController.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/dao/backend/PreferencesLevv.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';
import 'package:levv/model/bo/usuario/Usuario.dart';
import 'package:levv/model/bo/utilizador/AcompanhadorDePedido.dart';

class UsuarioController {
  late Usuario _usuario;

  final PreferencesLevv _preferencesLevv = PreferencesLevv();

  Usuario get usuario => _usuario;

  Future<bool> verificarSeCelularEstaCadastrado() async {
    String celular = await _preferencesLevv.buscarCelular();

    if (celular.isNotEmpty) {
      String tipoDeUsuario = await _preferencesLevv.buscarTipoDeUsuario();

      await _recuperarUsuario(celular: celular, tipo: tipoDeUsuario);

      return true;
    } else {
      return false;
    }
  }

  Future<void> _recuperarUsuario(
      {required String celular, required String tipo}) async {
    switch (tipo) {
      case TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO:
        await _recuperarUsuarioDoTipoAcompanhadorDoPedido(celular: celular);
        break;
      case TipoDeUsuario.ADMINISTRADOR:
        await _recuperarUsuarioDoTipoAdministrador(celular: celular);
        break;
      case TipoDeUsuario.CLIENTE:
        await _recuperarUsuarioDoTipoCliente(celular: celular);
        break;
      case TipoDeUsuario.ENTREGADOR:
        await _recuperarUsuarioDoTipoEntregador(celular: celular);
        break;
      case TipoDeUsuario.LOJISTA:
        await _recuperarUsuarioDoTipoLojista(celular: celular);
        break;
    }
  }

  Future<void> _recuperarUsuarioDoTipoAcompanhadorDoPedido(
      {required String celular}) async {
    AcompanhadorDePedidoController controller =
        AcompanhadorDePedidoController();
    AcompanhadorDePedido acompanhadorDePedido = await controller
        .busarUsuarioDoTipoAcompanhadorDoPedido(celular: celular);

    _usuario = acompanhadorDePedido;
  }

  _recuperarUsuarioDoTipoAdministrador({required String celular}) {}

  _recuperarUsuarioDoTipoCliente({required String celular}) {}

  _recuperarUsuarioDoTipoEntregador({required String celular}) {}

  _recuperarUsuarioDoTipoLojista({required String celular}) {}

  Future<void> criarUsuarioComTelefone({required String celular}) async {

    //todo criar user c/ cel no Authentication Firebase


    //todo criar usuario
    List<Endereco> enderecosFavoritos = [];
    List<Pedido> listaDePedidos = [];

    AcompanhadorDePedido acompanhadorDePedido =
    AcompanhadorDePedido(celular: celular,
        status: false,
        tipoDeUsuario: TipoDeUsuario(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO),
        enderecoCasa: Endereco.VAZIO,
        enderecoTrabalho: Endereco.VAZIO,
        enderecosFavoritos: enderecosFavoritos,
        listaDePedidos: listaDePedidos);


    //todo Firebase no DB LEVV

    _preferencesLevv.salvarCelular(acompanhadorDePedido.celular);
    _preferencesLevv.salvarTipoDeUsuario(acompanhadorDePedido.tipoDeUsuario.tipo);


    _usuario = acompanhadorDePedido;

  }
}
