
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:levv/model/bo/endereco/Estado.dart';

class Cidade{

  late String _nome;
  late bool _status;
  late Estado _estado;

  static final Cidade VAZIO = CidadeBuilder().create();



  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  Estado get estado => _estado;

  set estado(Estado value) {
    _estado = value;
  }



  @override
  String toString() {
    return
      _nome + ', ' +
        _estado.toString()
      ;
  }
}

class CidadeBuilder{

  static final Cidade _cidade = Cidade();

  CidadeBuilder(){
    _cidade.nome = "";
    _cidade.status = false;
    _cidade.estado = Estado.VAZIO;
  }

  CidadeBuilder comNome(String nome){
    _cidade.nome = nome;
    return this;
  }

  CidadeBuilder status(bool status){
    _cidade.status = status;
    return this;
  }

  CidadeBuilder pertenceAoEstado(Estado estado){
    _cidade.estado = estado;
    return this;
  }

  Cidade create(){
    return _cidade;
  }

}
