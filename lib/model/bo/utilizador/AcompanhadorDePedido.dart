import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';
import 'package:levv/model/bo/usuario/Usuario.dart';

class AcompanhadorDePedido extends Usuario {}

class AcompanhadorDePedidoBuilder {
  static final AcompanhadorDePedido _acompanhadorDePedido =
      AcompanhadorDePedido();

  AcompanhadorDePedidoBuilder() {
    _acompanhadorDePedido.celular = "";
    _acompanhadorDePedido.status = false;
    _acompanhadorDePedido.tipoDeUsuario =
        TipoDeUsuarioBuilder().doTipo(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO).create();

    _acompanhadorDePedido.enderecoCasa = Endereco.VAZIO;
    _acompanhadorDePedido.enderecoTrabalho = Endereco.VAZIO;
    List<Endereco> listaDeEnderecos = [Endereco.VAZIO];
    _acompanhadorDePedido.enderecosFavoritos = listaDeEnderecos;
    List<Pedido> listaDePedidos = [];
    _acompanhadorDePedido.listaDePedidos = listaDePedidos;
  }

  AcompanhadorDePedidoBuilder comCelular(String celular) {
    _acompanhadorDePedido.celular = celular;
    return this;
  }

  AcompanhadorDePedidoBuilder comStatus(bool status) {
    _acompanhadorDePedido.status = status;
    return this;
  }

  AcompanhadorDePedidoBuilder usuarioDoTipo(TipoDeUsuario tipoDeUsuario) {
    _acompanhadorDePedido.tipoDeUsuario = tipoDeUsuario;
    return this;
  }

  AcompanhadorDePedidoBuilder comEnderecoDeCasa(Endereco endereco) {
    _acompanhadorDePedido.enderecoCasa = endereco;
    return this;
  }

  AcompanhadorDePedidoBuilder comEnderecoDoTrabalho(Endereco endereco) {
    _acompanhadorDePedido.enderecoTrabalho = endereco;
    return this;
  }

  AcompanhadorDePedidoBuilder comEnderecosFavoritos(List<Endereco> endereco) {
    _acompanhadorDePedido.enderecosFavoritos = endereco;
    return this;
  }

  AcompanhadorDePedidoBuilder comListaDePedidos(List<Pedido> listaDePedidos) {
    _acompanhadorDePedido.listaDePedidos = listaDePedidos;
    return this;
  }

  AcompanhadorDePedido create() {
    return _acompanhadorDePedido;
  }
}
