import 'package:cloud_firestore/cloud_firestore.dart';

class Estado {
  late String nome;
  late String sigla;
  late bool status;

  @override
  String toString() {
    return "$nome - $sigla";
  }
}

class EstadoBuilder
    implements EstadoNome, EstadoSigla, EstadoStatus, EstadoBuild {
  final Estado _estado = Estado();

  EstadoBuilder._();

  static EstadoNome get instance => EstadoBuilder._();

  @override
  EstadoSigla nome(String nome) {
    _estado.nome = nome;
    return this;
  }

  @override
  EstadoStatus sigla(String sigla) {
    _estado.sigla = sigla;
    return this;
  }

  @override
  EstadoBuild status(bool status) {
    _estado.status = status;
    return this;
  }

  @override
  Estado build() {
    return _estado;
  }
}

abstract class EstadoNome {
  EstadoSigla nome(String nome);
}

abstract class EstadoSigla {
  EstadoStatus sigla(String sigla);
}

abstract class EstadoStatus {
  EstadoBuild status(bool status);
}

abstract class EstadoBuild {
  Estado build();
}
