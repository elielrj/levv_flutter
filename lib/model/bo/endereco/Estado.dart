
import 'package:cloud_firestore/cloud_firestore.dart';
class Estado{


  late String _nome;
  late String _sigla;
  late bool _status;

  static final Estado VAZIO = EstadoBuilder().comNome("").status(false).comSigla("").create();



  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get sigla => _sigla;

  set sigla(String value) {
    _sigla = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }



  @override
  String toString() {
    return
        _nome +
            '/'+
          _sigla
      ;
  }
}

class EstadoBuilder{

  static final Estado _estado = Estado();

  EstadoBUilder(){
    _estado.nome = "";
    _estado.sigla = "";
    _estado.status = false;
  }

  EstadoBuilder comNome(String nome){
    _estado.nome = nome;
    return this;
  }

  EstadoBuilder comSigla(String sigla){
    _estado.sigla = sigla;
    return this;
  }


  EstadoBuilder status(bool status){
    _estado.status = status;
    return this;
  }

  Estado create(){
    return _estado;
  }

}