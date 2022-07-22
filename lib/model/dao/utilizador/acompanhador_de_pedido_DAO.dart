import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/endereco.dart';
import 'package:levv/model/bo/endereco/tipo_de_imovel.dart';
import 'package:levv/model/bo/utilizador/acompanhador.dart';
import 'package:levv/model/dao/CrudDAO.dart';
import 'package:levv/model/dao/backend/PreferencesLevv.dart';

import '../../bo/pedido/pedido.dart';

class AcompanhadorDePedidoDAO extends CrudDAO<Acompanhador>{



  @override
  Future<void> create(Acompanhador acompanhadorDePedido)  async{}

  @override
  Future<void> delete(Acompanhador acompanhadorDePedido) async{}

  @override
  Future<List<Acompanhador>> retrive() async{
    return [];
  }

  @override
  Future<void> update(Acompanhador acompanhadorDePedido) async {}

  @override
  Future<Acompanhador> retriveForPhone(String phone) async{
    //todo
    return Acompanhador();
  }
}
