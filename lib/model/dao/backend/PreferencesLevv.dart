import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Bairro.dart';
import 'package:levv/model/bo/endereco/Cep.dart';
import 'package:levv/model/bo/endereco/Cidade.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/endereco/Estado.dart';
import 'package:levv/model/bo/endereco/TipoDeImovel.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';
import 'package:levv/model/bo/utilizador/AcompanhadorDePedido.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../bo/endereco/Estado.dart';
import '../../bo/pedido/Pedido.dart';



class PreferencesLevv {
  final String _CELULAR = "celular";
  final String _TIPO_DE_USUARIO = "tipo_de_usuario";
  final String _ENDERECO_CASA = "endereco_casa";

  final String _DESCRICAO_CASA = "descricao_casa";
  final String _LOGRADOURO_CASA = "logradouro_casa";
  final String _NUMERO_CASA = "numero_casa";
  final String _COMPLEMENTO_CASA = "complemento_casa";
  final String _BAIRRO_CASA = "bairro_casa";
  final String _CIDADE_CASA = "cidade_casa";
  final String _ESTADO_CASA = "estado_casa";
  final String _SIGLA_CASA = "sigla_casa";
  final String _TIPO_DE_IMOVEL_CASA = "tipo_de_imovel_casa";
  final String _CEP_CASA = "cep_casa";
  final String _LATITUDE_CASA = "latitude_casa";
  final String _LONGITUDE_CASA = "longitude_casa";

  final String _ENDERECO_TRABALHO = "endereco_trabalho";

  final String _DESCRICAO_TRABALHO = "descricao_trabalho";
  final String _LOGRADOURO_TRABALHO = "logradouro_trabalho";
  final String _NUMERO_TRABALHO = "numero_trabalho";
  final String _COMPLEMENTO_TRABALHO = "complemento_trabalho";
  final String _BAIRRO_TRABALHO = "bairro_trabalho";
  final String _CIDADE_TRABALHO = "cidade_trabalho";
  final String _ESTADO_TRABALHO = "estado_trabalho";
  final String _SIGLA_TRABALHO = "sigla_trabalho";
  final String _TIPO_DE_IMOVEL_TRABALHO = "tipo_de_imovel_trabalho";
  final String _CEP_TRABALHO = "cep_trabalho";
  final String _LATITUDE_TRABALHO = "latitude_trabalho";
  final String _LONGITUDE_TRABALHO = "longitude_trabalho";

  Future<void> salvarCelular(String celular) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_CELULAR, celular);
  }

  /// retorna uma strig vazia, caso não esteja cadastrado
  Future<String> buscarCelular() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_CELULAR) ?? "";
  }

  Future<void> salvarTipoDeUsuario(String tipoDeUsuario) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_TIPO_DE_USUARIO, tipoDeUsuario);
  }

  Future<String> buscarTipoDeUsuario() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_TIPO_DE_USUARIO) ?? "";
  }

  Future<void> salvarEnderecoDeCasaDoUsuario(Endereco endereco) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_DESCRICAO_CASA, endereco.descricao);
    await prefs.setString(_LOGRADOURO_CASA, endereco.logradouro);
    await prefs.setString(_NUMERO_CASA, endereco.numero);
    await prefs.setString(_COMPLEMENTO_CASA, endereco.complemento);

    await prefs.setString(_BAIRRO_CASA, endereco.bairro.nome);

    await prefs.setString(_CIDADE_CASA, endereco.bairro.cidade.nome);

    await prefs.setString(_ESTADO_CASA, endereco.bairro.cidade.estado.nome);
    await prefs.setString(_SIGLA_CASA, endereco.bairro.cidade.estado.sigla);

    await prefs.setString(_TIPO_DE_IMOVEL_CASA, endereco.tipoDeImovel.tipo);
    await prefs.setString(_CEP_CASA, endereco.cep.cep);
    await prefs.setDouble(_LATITUDE_CASA, endereco.geologalizacao.latitude);
    await prefs.setDouble(_LONGITUDE_CASA, endereco.geologalizacao.longitude);

    await prefs.setBool(_ENDERECO_CASA, true);
  }

  Future<Endereco> buscarEnderecoDeCasaDoUsuario() async {
    final prefs = await SharedPreferences.getInstance();

    bool enderecoDeCasaEstaCadastrado =
        await prefs.getBool(_ENDERECO_CASA) ?? false;

    if (enderecoDeCasaEstaCadastrado) {
      String descricaoCasa = prefs.getString(_DESCRICAO_CASA) ?? "";
      String logradouroCasa = prefs.getString(_LOGRADOURO_CASA) ?? "";
      String numeroCasa = prefs.getString(_NUMERO_CASA) ?? "";
      String complementoCasa = prefs.getString(_COMPLEMENTO_CASA) ?? "";
      String bairroCasa = prefs.getString(_BAIRRO_CASA) ?? "";
      String cidadeCasa = prefs.getString(_CIDADE_CASA) ?? "";

      String estadoCasa = prefs.getString(_ESTADO_CASA) ?? "";
      String siglaCasa = prefs.getString(_SIGLA_CASA) ?? "";

      String tipoDeImovelCasa = prefs.getString(_TIPO_DE_IMOVEL_CASA) ?? "";
      String cepCasa = prefs.getString(_CEP_TRABALHO) ?? "";

      double latitudeCasa = prefs.getDouble(_LATITUDE_CASA) ?? 0;
      double longitudeCasa = prefs.getDouble(_LONGITUDE_CASA) ?? 0;

      return Endereco(0,
          descricaoCasa,
          logradouroCasa,
          numeroCasa,
          complementoCasa,
          true,
          TipoDeImovel(tipoDeImovelCasa),
          Bairro(0, bairroCasa, true,
              Cidade(0, cidadeCasa, true, Estado(0, estadoCasa, siglaCasa, true))),
          Cep(cepCasa, true),
          GeoPoint(latitudeCasa, longitudeCasa));
    } else {
      return Endereco.VAZIO;
    }
  }

  Future<void> salvarEnderecoDoTrabalhoDoUsuario(Endereco endereco) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_DESCRICAO_TRABALHO, endereco.descricao);
    await prefs.setString(_LOGRADOURO_TRABALHO, endereco.logradouro);
    await prefs.setString(_NUMERO_TRABALHO, endereco.numero);
    await prefs.setString(_COMPLEMENTO_TRABALHO, endereco.complemento);

    await prefs.setString(_BAIRRO_TRABALHO, endereco.bairro.nome);

    await prefs.setString(_CIDADE_TRABALHO, endereco.bairro.cidade.nome);

    await prefs.setString(_ESTADO_TRABALHO, endereco.bairro.cidade.estado.nome);
    await prefs.setString(_SIGLA_TRABALHO, endereco.bairro.cidade.estado.sigla);

    await prefs.setString(_TIPO_DE_IMOVEL_TRABALHO, endereco.tipoDeImovel.tipo);
    await prefs.setString(_CEP_TRABALHO, endereco.cep.cep);
    await prefs.setDouble(_LATITUDE_TRABALHO, endereco.geologalizacao.latitude);
    await prefs.setDouble(
        _LONGITUDE_TRABALHO, endereco.geologalizacao.longitude);

    await prefs.setBool(_ENDERECO_TRABALHO, true);
  }

  Future<Endereco> buscarEnderecoDoTrabalhoDoUsuario() async {
    final prefs = await SharedPreferences.getInstance();

    bool enderecoDeCasaEstaCadastrado =
        await prefs.getBool(_ENDERECO_TRABALHO) ?? false;

    if (enderecoDeCasaEstaCadastrado) {
      String descricaoCasa = prefs.getString(_DESCRICAO_TRABALHO) ?? "";
      String logradouroCasa = prefs.getString(_LOGRADOURO_TRABALHO) ?? "";
      String numeroCasa = prefs.getString(_NUMERO_TRABALHO) ?? "";
      String complementoCasa = prefs.getString(_COMPLEMENTO_TRABALHO) ?? "";
      String bairroCasa = prefs.getString(_BAIRRO_TRABALHO) ?? "";
      String cidadeCasa = prefs.getString(_CIDADE_TRABALHO) ?? "";

      String estadoCasa = prefs.getString(_ESTADO_TRABALHO) ?? "";
      String siglaCasa = prefs.getString(_SIGLA_TRABALHO) ?? "";

      String tipoDeImovelCasa = prefs.getString(_TIPO_DE_IMOVEL_TRABALHO) ?? "";
      String cepCasa = prefs.getString(_CEP_TRABALHO) ?? "";

      double latitudeCasa = prefs.getDouble(_LATITUDE_TRABALHO) ?? 0;
      double longitudeCasa = prefs.getDouble(_LONGITUDE_TRABALHO) ?? 0;

      return Endereco(0,
          descricaoCasa,
          logradouroCasa,
          numeroCasa,
          complementoCasa,
          true,
          TipoDeImovel(tipoDeImovelCasa),
          Bairro(0, bairroCasa, true,
              Cidade(0, cidadeCasa, true, Estado(0, estadoCasa, siglaCasa, true))),
          Cep(cepCasa, true),
          GeoPoint(latitudeCasa, longitudeCasa));
    } else {
      return Endereco.VAZIO;
    }
  }

  Future<AcompanhadorDePedido> buscarUsuarioDoTipoAcompanhadorDoPedido(
      {required String celular}) async {
    //todo buscar status no DB LEVV
    bool status = true;

    //todo buscar endereços dos favoritos no DB LEVV
    List<Endereco> enderecosFavoritos = [Endereco.VAZIO];

    //todo buscar lista de pedidos do usuário no DB LEVV
    List<Pedido> listaDePedidos = [];

    return AcompanhadorDePedido(
        celular: celular,
        status: status,
        tipoDeUsuario: TipoDeUsuario(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO),
        enderecoCasa: await buscarEnderecoDeCasaDoUsuario(),
        enderecoTrabalho: await buscarEnderecoDoTrabalhoDoUsuario(),
        enderecosFavoritos:  enderecosFavoritos,
        listaDePedidos: listaDePedidos);
  }


}
