import 'package:flutter/material.dart';
import 'package:levv/model/bo/meioDeTransprte/meio_de_transporte.dart';
import 'package:levv/model/bo/pedido/peso.dart';
import 'package:levv/model/bo/pedido/volume.dart';
import 'package:levv/model/dao/CrudDAO.dart';

class MeioDeTransporteDAO extends CrudDAO<MeioDeTransporte> {
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
    lista.add(MeioDeTransporteBuilder.instance
        .descricao(MeioDeTransporte.A_PE)
        .limiteDePeso(PesoBuilder.instance.valorDoPeso(Peso.PESO_VALOR_1).build())
        .limiteDeVolume(
            VolumeBuilder.instance.valor(Volume.VOLUME_VALOR_20_POR_20).build())
        .status(false)
        .build());
    lista.add(MeioDeTransporteBuilder.instance
        .descricao(MeioDeTransporte.BIKE)
        .limiteDePeso(PesoBuilder.instance.valorDoPeso(Peso.PESO_VALOR_10).build())
        .limiteDeVolume(
            VolumeBuilder.instance.valor(Volume.VOLUME_VALOR_40_POR_40).build())
        .status(false)
        .build());
    lista.add(MeioDeTransporteBuilder.instance
        .descricao(MeioDeTransporte.MOTO)
        .limiteDePeso(PesoBuilder.instance.valorDoPeso(Peso.PESO_VALOR_5).build())
        .limiteDeVolume(
            VolumeBuilder.instance.valor(Volume.VOLUME_VALOR_40_POR_40).build())
        .status(false)
        .build());
    lista.add(MeioDeTransporteBuilder.instance
        .descricao(MeioDeTransporte.CARRO)
        .limiteDePeso(PesoBuilder.instance.valorDoPeso(Peso.PESO_VALOR_25).build())
        .limiteDeVolume(
            VolumeBuilder.instance.valor(Volume.VOLUME_VALOR_20_POR_20).build())
        .status(false)
        .build());

    return lista;
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
