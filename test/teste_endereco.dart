import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/bairro.dart';
import 'package:levv/model/bo/endereco/cep.dart';
import 'package:levv/model/bo/endereco/cidade.dart';
import 'package:levv/model/bo/endereco/endereco.dart';
import 'package:levv/model/bo/endereco/estado.dart';

void main() {
  final endereco = EnderecoBuilder().create();

  print("Descrição: ${endereco.apelido}");
  print("Logradouro: ${endereco.logradouro}");
  print("Numero: ${endereco.numero}");
  print("ComplementoDescrição: ${endereco.complemento}");
  print("Bairo: ${endereco.bairro}");
  print("Cep: ${endereco.cep}");
  print(
      "Geolocalização: latirude ${endereco.geologalizacao.latitude.toString()}, longitude ${endereco.geologalizacao.latitude.toString()}");

  final endereco2 = EnderecoBuilder()
      .comDescricao("Casa")
      .comNumero("123")
      .comLogradouro("Rua Cel Cabral")
      .comComplemento("Casa")
      .comBairro(BairroBuilder()
          .nomeDoBairro("Centro")
          .pertenceACidade(CidadeBuilder()
              .comNome("Tubarão")
              .pertenceAoEstado(EstadoBuilder()
                  .comNome("Santa Catarina")
                  .comSigla("SC")
                  .create())
              .create())
          .create())
      .comCep(CepBuilder().comCep("88701-050").create())
      .comGeologalizacao(const GeoPoint(20.0, 20.1))
      .create();

  print("Descrição: ${endereco2.apelido}");
  print("Logradouro: ${endereco2.logradouro}");
  print("Numero: ${endereco2.numero}");
  print("Complemento: ${endereco2.complemento}");
  print("Bairo: ${endereco2.bairro}");
  print("Cep: ${endereco2.cep}");
  print(
      "Geolocalização: latirude ${endereco2.geologalizacao.latitude.toString()}, longitude ${endereco2.geologalizacao.latitude.toString()}");
}
