import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:levv/model/bo/endereco/bairro.dart';
import 'package:levv/model/bo/endereco/cep.dart';
import 'package:levv/model/bo/endereco/tipo_de_imovel.dart';

class Endereco {
  late String apelido;
  late String logradouro;
  late String numero;
  late String complemento;
  late bool status;

  late TipoDeImovel tipoDeImovel;

  late Bairro bairro;

  late Cep cep;

  late GeoPoint geologalizacao;

  @override
  String toString() {
    return "$logradouro, $numero, ${tipoDeImovel.toString()},  "
        "${complemento.toString()} ${complemento.isNotEmpty ? "," : ""},  "
        "${bairro.toString()}";
  }
}

class EnderecoBuilder implements EnderecoApelido, EnderecoLogradouro, EnderecoNumero, EnderecoComplemento,
EnderecoStatus, EnderecoTipoDeImovel, EnderecoBairro, EnderecoCep, EnderecoGeoPoint{
  final Endereco _endereco = Endereco();

  EnderecoBuilder._();

  static EnderecoApelido get instance => EnderecoBuilder._();

  @override
  EnderecoLogradouro apelido(String apelido) {
    _endereco.apelido = apelido;
    return this;
  }

  @override
  EnderecoNumero logradouro(String logradouro) {
    _endereco.logradouro = logradouro;
    return this;
  }

  @override
  EnderecoComplemento numero(String numero) {
    _endereco.numero = numero;
    return this;
  }

  @override
  EnderecoStatus complemento(String complemento) {
    _endereco.complemento = complemento;
    return this;
  }

  @override
  EnderecoTipoDeImovel status(bool status) {
    _endereco.status = status;
    return this;
  }

  @override
  EnderecoBairro tipoDeImovel(TipoDeImovel tipoDeImovel) {
    _endereco.tipoDeImovel = tipoDeImovel;
    return this;
  }

  @override
  EnderecoCep bairro(Bairro bairro) {
    _endereco.bairro = bairro;
    return this;
  }

  @override
  EnderecoGeoPoint cep(Cep cep) {
    _endereco.cep = cep;
    return this;
  }

  @override
  Endereco build() {
    return _endereco;
  }

  @override
  geoPoint(GeoPoint geologalizacao) {
    _endereco.geologalizacao = geologalizacao;
    return this;
  }
}

abstract class EnderecoApelido {
  EnderecoLogradouro apelido(String apelido);
}

abstract class EnderecoLogradouro {
  EnderecoNumero logradouro(String logradouro);
}

abstract class EnderecoNumero {
  EnderecoComplemento numero(String numero);
}

abstract class EnderecoComplemento {
  EnderecoStatus complemento(String complemento);
}

abstract class EnderecoStatus {
  EnderecoTipoDeImovel status(bool status);
}

abstract class EnderecoTipoDeImovel {
  EnderecoBairro tipoDeImovel(TipoDeImovel tipoDeImovel);
}

abstract class EnderecoBairro {
  EnderecoCep bairro(Bairro bairro);
}

abstract class EnderecoCep {
  EnderecoGeoPoint cep(Cep cep);
}

abstract class EnderecoGeoPoint {
  geoPoint(GeoPoint geoPoint);

  Endereco build();
}
