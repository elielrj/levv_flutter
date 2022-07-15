import 'package:flutter/material.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/dao/CrudDAO.dart';

class PedidoDAO extends CrudDAO<Pedido>{
  @override
  void create(Pedido pedido)  {

  }

  @override
  void delete(Pedido objeto) {
    // TODO: implement delete
  }

  @override
  List<Pedido> retrive() {
    // TODO: implement retrive
    throw UnimplementedError();
  }

  @override
  Pedido retriveForPhone(String phone) {
    // TODO: implement retriveForPhone
    throw UnimplementedError();
  }

  @override
  void update(Pedido objeto) {
    // TODO: implement update
  }

}