import 'package:flutter/material.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/dao/CrudDAO.dart';

class PedidoDAO extends CrudDAO<Pedido>{
  @override
  Future<void> create(Pedido pedido) async {

  }

  @override
  Future<void> delete(Pedido objeto)async {
    // TODO: implement delete
  }

  @override
  Future<List<Pedido>> retrive()async {
    // TODO: implement retrive
    throw UnimplementedError();
  }

  @override
  Future<Pedido> retriveForPhone(String phone) async{
    // TODO: implement retriveForPhone
    throw UnimplementedError();
  }

  @override
  Future<void> update(Pedido objeto) async{
    // TODO: implement update
  }

}