import 'package:levv/model/meioDeTransprte/MeioDeTransporte.dart';

import '../Arquivo/Arquivo.dart';

class Veiculo{
  String _modelo;
  String _marca;
  String _placa;
  String _renavam;
  bool _status;

  MeioDeTransporte _meioDeTransporte;
  Arquivo _crlv;

  Veiculo(this._modelo, this._marca, this._placa, this._renavam, this._status, this._meioDeTransporte, this._crlv);

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get renavam => _renavam;

  set renavam(String value) {
    _renavam = value;
  }

  String get placa => _placa;

  set placa(String value) {
    _placa = value;
  }

  String get marca => _marca;

  set marca(String value) {
    _marca = value;
  }

  String get modelo => _modelo;

  set modelo(String value) {
    _modelo = value;
  }

  MeioDeTransporte get meioDeTransporte => _meioDeTransporte;

  set meioDeTransporte(MeioDeTransporte value) {
    _meioDeTransporte = value;
  }

  Arquivo get crlv => _crlv;

  set crlv(Arquivo value) {
    _crlv = value;
  }
}