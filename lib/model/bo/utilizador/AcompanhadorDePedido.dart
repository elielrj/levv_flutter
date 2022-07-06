
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';
import 'package:levv/model/bo/usuario/Usuario.dart';

class AcompanhadorDePedido extends Usuario {
  AcompanhadorDePedido(
      {required String celular,
      required bool status,
      required TipoDeUsuario tipoDeUsuario,
      required Endereco enderecoCasa,
      required Endereco enderecoTrabalho,
      required List<Endereco> enderecosFavoritos,
      required List<Pedido> listaDePedidos})
      : super(
            celular: celular,
            status: status,
            tipoDeUsuario: tipoDeUsuario,
            enderecoCasa: enderecoCasa,
            enderecoTrabalho: enderecoTrabalho,
            enderecosFavoritos: enderecosFavoritos,
            listaDePedidos: listaDePedidos);
}
