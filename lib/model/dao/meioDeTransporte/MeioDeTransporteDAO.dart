import 'package:flutter/material.dart';
import 'package:levv/model/bo/meioDeTransprte/MeioDeTransporte.dart';
import 'package:levv/model/bo/pedido/volume.dart';
import 'package:levv/model/dao/CrudDAO.dart';

class MeioDeTransporteDAO extends CrudDAO<MeioDeTransporte>{
  @override
  Future<void> create(MeioDeTransporte meioDeTransporte) async {
    // TODO: implement create
  }

  @override
  Future<void> delete(MeioDeTransporte meioDeTransporte) async {
    // TODO: implement delete
  }

  @override
  Future<List<MeioDeTransporte>> retrive() async {
    // TODO: implement retrive

    const Duration(seconds: 1);

    List<MeioDeTransporte> lista = [];

    //todo teste
    lista.add(MeioDeTransporteBuilder().comDescricao(MeioDeTransporte.A_PE).comStatus(false).comLimiteDePeso(5).comLimiteDeVolume(1).create());
    lista.add(MeioDeTransporteBuilder().comDescricao(MeioDeTransporte.BIKE).comStatus(false).comLimiteDePeso(5).comLimiteDeVolume(1).create());
    lista.add(MeioDeTransporteBuilder().comDescricao(MeioDeTransporte.MOTO).comStatus(false).comLimiteDePeso(5).comLimiteDeVolume(1).create());
    lista.add(MeioDeTransporteBuilder().comDescricao(MeioDeTransporte.CARRO).comStatus(false).comLimiteDePeso(5).comLimiteDeVolume(1).create());

    return lista ;
  }

  @override
  Future<MeioDeTransporte> retriveForPhone(String phone) async {
    //todo 4 - MT não se encaixa em retrive for phone
    // TODO: implement retriveForPhone
    throw UnimplementedError();
  }

  @override
  Future<void> update(MeioDeTransporte objeto) async {
    // TODO: implement update
  }

}