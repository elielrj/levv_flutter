
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Estado.dart';
import 'package:levv/model/dao/CrudDAO.dart';

class EstadoDAO extends CrudDAO<Estado>{
  @override
  void create(Estado estado){
    //todo SQLLite
    
  }

  @override
  void delete(Estado estado) {
    // TODO: implement delete
  }

  @override
  List<Estado> retrive() {
    // TODO: implement retrive
    throw UnimplementedError();
  }

  @override
  void update(Estado estado) {
    // TODO: implement update
  }

  @override
  Estado retriveForPhone(String phone) {
    // TODO: implement retriveForPhone
    throw UnimplementedError();
  }
  
}