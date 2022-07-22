import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:levv/model/bo/endereco/estado.dart';

import 'cidade.dart';

class Bairro {
  late String nome;
  late Cidade cidade;
  late bool status;

  @override
  String toString() {
    return "$nome ${cidade.toString()}";
  }
}

class BairroBuilder implements BairroNome, BairroCidade, BairroStatus {
   final Bairro _bairro = Bairro();

   BairroBuilder._();

   static BairroNome get instance => BairroBuilder._();

  @override
  BairroCidade nome(String nome) {
    _bairro.nome = nome;
    return this;
  }

  @override
  BairroCidade cidade(Cidade cidade) {
    _bairro.cidade = cidade;
    return this;
  }

  @override
  Bairro build() {
    return _bairro;
  }

  @override
  BairroStatus status(bool status) {
    _bairro.status = status;
    return this;
  }

}

abstract class BairroNome{
  BairroCidade nome(String nome);

}

abstract class BairroCidade{
 BairroCidade cidade(Cidade cidade);
}

abstract class BairroStatus{
  BairroStatus status(bool status);
  Bairro build();
}
