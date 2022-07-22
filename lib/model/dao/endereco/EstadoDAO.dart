
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/estado.dart';
import 'package:levv/model/dao/CrudDAO.dart';

class EstadoDAO extends CrudDAO<Estado>{
  @override
  Future<void> create(Estado estado)async{
    //todo SQLLite
    
  }

  @override
  Future<void> delete(Estado estado)async {
    // TODO: implement delete
  }

  @override
  Future<List<Estado>> retrive() async{
    // TODO: implement retrive
    throw UnimplementedError();
  }

  @override
  Future<void> update(Estado estado) async{
    // TODO: implement update
  }

  @override
  Future<Estado> retriveForPhone(String phone)async {
    // TODO: implement retriveForPhone
    throw UnimplementedError();
  }
  
}