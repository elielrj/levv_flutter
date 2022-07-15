
import 'package:levv/model/bo/arquivo/Arquivo.dart';
import 'package:levv/model/bo/meioDeTransprte/MeioDeTransporte.dart';

import '../arquivo/Arquivo.dart';

class Veiculo{
  late String _modelo;
  late String _marca;
  late String _placa;
  late String _renavam;
  late bool _status;

  late MeioDeTransporte _meioDeTransporte;
  late  Arquivo _crlv;

  String get modelo => _modelo;

  set modelo(String value) {
    _modelo = value;
  }

  String get marca => _marca;

  set marca(String value) {
    _marca = value;
  }

  String get placa => _placa;

  set placa(String value) {
    _placa = value;
  }

  String get renavam => _renavam;

  set renavam(String value) {
    _renavam = value;
  }

  bool get status => _status;

  set status(bool value) {
    _status = value;
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

class VeiculoBuilder{

  static final Veiculo _veiculo = Veiculo();

  VeiculoBuilder(){
    _veiculo.modelo = "";
    _veiculo.marca = "";
    _veiculo.placa = "";
    _veiculo.renavam = "";
    _veiculo.status = false;
    _veiculo.meioDeTransporte = MeioDeTransporteBuilder().create();
    _veiculo.crlv = ArquivoBuilder().create();
  }

  VeiculoBuilder modeloDoVeiculo(String modelo){
    _veiculo.modelo = modelo;
    return this;
  }

  VeiculoBuilder marcaDoVeiculo(String marca){
    _veiculo.marca = marca;
    return this;
  }

  VeiculoBuilder placaDoVeiculo(String placa){
    _veiculo.placa = placa;
    return this;
  }

  VeiculoBuilder renavamDoVeiculo(String renavam){
    _veiculo.modelo = renavam;
    return this;
  }

  VeiculoBuilder statusDoVeiculo(bool status){
    _veiculo.status = status;
    return this;
  }

  VeiculoBuilder meioDeTransporteDoVeiculo(MeioDeTransporte meioDeTransporte){
    _veiculo.meioDeTransporte = meioDeTransporte;
    return this;
  }
  VeiculoBuilder documentoDoVeiculo(Arquivo crlv){
    _veiculo.crlv = crlv;
    return this;
  }

  Veiculo create(){
    return _veiculo;
  }
}