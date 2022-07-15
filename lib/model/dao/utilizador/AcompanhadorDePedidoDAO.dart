import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/endereco/TipoDeImovel.dart';
import 'package:levv/model/bo/utilizador/AcompanhadorDePedido.dart';
import 'package:levv/model/dao/CrudDAO.dart';
import 'package:levv/model/dao/backend/PreferencesLevv.dart';

import '../../bo/pedido/Pedido.dart';

class AcompanhadorDePedidoDAO extends CrudDAO<AcompanhadorDePedido> {



  @override
  void create(AcompanhadorDePedido acompanhadorDePedido)  {}

  @override
  void delete(AcompanhadorDePedido acompanhadorDePedido) {}

  @override
  List<AcompanhadorDePedido> retrive() {
    return [];
  }

  @override
  void update(AcompanhadorDePedido acompanhadorDePedido)  {}

  @override
  AcompanhadorDePedido retriveForPhone(String phone) {
    return AcompanhadorDePedidoBuilder().create();
  }
}
