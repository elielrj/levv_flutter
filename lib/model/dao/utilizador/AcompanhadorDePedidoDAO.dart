import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/endereco/TipoDeImovel.dart';
import 'package:levv/model/bo/utilizador/AcompanhadorDePedido.dart';
import 'package:levv/model/dao/CrudDAO.dart';
import 'package:levv/model/dao/backend/PreferencesLevv.dart';

import '../../bo/pedido/Pedido.dart';

class AcompanhadorDePedidoDAO extends CrudDAO<AcompanhadorDePedido>{



  @override
  Future<void> create(AcompanhadorDePedido acompanhadorDePedido)  async{}

  @override
  Future<void> delete(AcompanhadorDePedido acompanhadorDePedido) async{}

  @override
  Future<List<AcompanhadorDePedido>> retrive() async{
    return [];
  }

  @override
  Future<void> update(AcompanhadorDePedido acompanhadorDePedido) async {}

  @override
  Future<AcompanhadorDePedido> retriveForPhone(String phone) async{
    return AcompanhadorDePedidoBuilder().create();
  }
}
