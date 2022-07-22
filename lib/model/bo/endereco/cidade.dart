import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:levv/model/bo/endereco/estado.dart';

class Cidade {
  late String nome;
  late Estado estado;
  late bool status;

  @override
  String toString() {
    return "$nome, ${estado.toString()}";
  }
}

class CidadeBuilder implements CidadeNome, CidadeEstado, CidadeStatus {
  final Cidade _cidade = Cidade();

  CidadeBuilder._();

  static CidadeNome get instance => CidadeBuilder._();

  @override
  CidadeEstado nome(String nome) {
    _cidade.nome = nome;
    return this;
  }

  @override
  CidadeStatus estado(Estado estado) {
    _cidade.estado = estado;
    return this;
  }

  @override
  Cidade build() {
    return _cidade;
  }

  @override
  CidadeStatus status(bool status) {
    _cidade.status = status;
    return this;
  }
}

abstract class CidadeNome {
  CidadeEstado nome(String nome);
}

abstract class CidadeEstado {
  CidadeStatus estado(Estado estado);
}

abstract class CidadeStatus {
  CidadeStatus status(bool status);

  Cidade build();
}
