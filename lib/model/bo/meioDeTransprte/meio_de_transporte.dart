import 'package:flutter/material.dart';
import 'package:levv/model/bo/arquivo/Arquivo.dart';
import 'package:levv/model/bo/pedido/Peso.dart';

import '../pedido/volume.dart';

class MeioDeTransporte {
  static const A_PE = "A pé";
  static const BIKE = "Bike";
  static const MOTO = "Moto";
  static const CARRO = "Carro";

  static const A_PE_VALOR = 1;
  static const BIKE_VALOR = 2;
  static const MOTO_VALOR = 3;
  static const CARRO_VALOR = 4;

  static const LISTA_DE_MEIOS = [A_PE, BIKE, MOTO, CARRO];

  late String descricao;
  late Peso limiteDePeso;
  late Volume limiteDeVolume;
  late bool status;

  static int buscarValorDoMeioDeTransporte(String meioDeTransporte) {
    switch (meioDeTransporte) {
      case MeioDeTransporte.A_PE:
        return MeioDeTransporte.A_PE_VALOR;
      case MeioDeTransporte.BIKE:
        return MeioDeTransporte.BIKE_VALOR;
      case MeioDeTransporte.MOTO:
        return MeioDeTransporte.MOTO_VALOR;
      case MeioDeTransporte.CARRO:
        return MeioDeTransporte.CARRO_VALOR;
    }
    return 0;
  }

  static String buscarMeioDeTransportePeloValor(int meioDeTransporte) {
    switch (meioDeTransporte) {
      case MeioDeTransporte.A_PE_VALOR:
        return MeioDeTransporte.A_PE;
      case MeioDeTransporte.BIKE_VALOR:
        return MeioDeTransporte.BIKE;
      case MeioDeTransporte.MOTO_VALOR:
        return MeioDeTransporte.MOTO;
      case MeioDeTransporte.CARRO_VALOR:
        return MeioDeTransporte.CARRO;
    }
    return "";
  }
}

class MeioDeTransporteBuilder
    implements
        MeioDeTransporteDescricao,
        MeioDeTransporteLimiteDePeso,
        MeioDeTransporteLimiteDeVoume,
        MeioDeTransporteStatus,
        MeioDeTransporteBuild {
  final MeioDeTransporte _meioDeTransporte = MeioDeTransporte();

  MeioDeTransporteBuilder._();

  static MeioDeTransporteDescricao get instance => MeioDeTransporteBuilder._();

  @override
  MeioDeTransporteLimiteDePeso descricao(String descricao) {
    _meioDeTransporte.descricao = descricao;
    return this;
  }

  @override
  MeioDeTransporteLimiteDeVoume limiteDePeso(Peso limiteDePeso) {
    _meioDeTransporte.limiteDePeso = limiteDePeso;
    return this;
  }

  @override
  MeioDeTransporteStatus limiteDeVolume(Volume limiteDeVolume) {
    _meioDeTransporte.limiteDeVolume = limiteDeVolume;
    return this;
  }

  @override
  MeioDeTransporte build() {
    return _meioDeTransporte;
  }

  @override
  MeioDeTransporteBuild status(bool status) {
    _meioDeTransporte.status = status;
    return this;
  }
}

abstract class MeioDeTransporteDescricao {
  MeioDeTransporteLimiteDePeso descricao(String descricao);
}

abstract class MeioDeTransporteLimiteDePeso {
  MeioDeTransporteLimiteDeVoume limiteDePeso(Peso limiteDePeso);
}

abstract class MeioDeTransporteLimiteDeVoume {
  MeioDeTransporteStatus limiteDeVolume(Volume limiteDeVolume);
}

abstract class MeioDeTransporteStatus {
  MeioDeTransporteBuild status(bool status);
}

abstract class MeioDeTransporteBuild {
  MeioDeTransporte build();
}
