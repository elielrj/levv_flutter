import 'package:levv/model/bo/arquivo/arquivo.dart';
import 'package:levv/model/bo/meioDeTransprte/meio_de_transporte.dart';

import '../arquivo/arquivo.dart';

class Veiculo {
  late String modelo;
  late String marca;
  late String placa;
  late String renavam;
  late bool status;

  late MeioDeTransporte meioDeTransporte;
  late Arquivo crlv;
}

class VeiculoBuilder
    implements
        VeiculoModelo,
        VeiculoMarca,
        VeiculoPlaca,
        VeiculoRenavam,
        VeiculoStatus,
        VeiculoMeioDeTransporte,
        VeiculoCrlv,
        VeiculoBuild {
  final Veiculo _veiculo = Veiculo();

  VeiculoBuilder._();

  static VeiculoModelo get instance => VeiculoBuilder._();

  @override
  VeiculoMarca modelo(String modelo) {
    _veiculo.modelo = modelo;
    return this;
  }

  @override
  VeiculoPlaca marca(String marca) {
    _veiculo.marca = marca;
    return this;
  }

  @override
  VeiculoRenavam placa(String placa) {
    _veiculo.placa = placa;
    return this;
  }

  @override
  VeiculoStatus renavam(String renavam) {
    _veiculo.renavam = renavam;
    return this;
  }

  @override
  VeiculoMeioDeTransporte status(bool status) {
    _veiculo.status = status;
    return this;
  }

  @override
  VeiculoCrlv meioDeTranspor(MeioDeTransporte meioDeTransporte) {
    _veiculo.meioDeTransporte = meioDeTransporte;
    return this;
  }

  @override
  VeiculoBuild crlv(Arquivo crlv) {
    _veiculo.crlv = crlv;
    return this;
  }

  @override
  Veiculo build() {
   return _veiculo;
  }
}

abstract class VeiculoModelo {
  VeiculoMarca modelo(String modelo);
}

abstract class VeiculoMarca {
  VeiculoPlaca marca(String marca);
}

abstract class VeiculoPlaca {
  VeiculoRenavam placa(String placa);
}

abstract class VeiculoRenavam {
  VeiculoStatus renavam(String renavam);
}

abstract class VeiculoStatus {
  VeiculoMeioDeTransporte status(bool status);
}

abstract class VeiculoMeioDeTransporte {
  VeiculoCrlv meioDeTranspor(MeioDeTransporte meioDeTransporte);
}

abstract class VeiculoCrlv {
  VeiculoBuild crlv(Arquivo crlv);
}

abstract class VeiculoBuild {
  Veiculo build();
}
