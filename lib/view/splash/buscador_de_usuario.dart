import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:levv/model/bo/arquivo/arquivo.dart';
import 'package:levv/model/bo/endereco/bairro.dart';
import 'package:levv/model/bo/endereco/cep.dart';
import 'package:levv/model/bo/endereco/cidade.dart';
import 'package:levv/model/bo/endereco/endereco.dart';
import 'package:levv/model/bo/endereco/estado.dart';
import 'package:levv/model/bo/endereco/tipo_de_imovel.dart';
import 'package:levv/model/bo/meioDeTransprte/meio_de_transporte.dart';
import 'package:levv/model/bo/pedido/Peso.dart';
import 'package:levv/model/bo/pedido/volume.dart';
import 'package:levv/model/bo/usuario/celular.dart';
import 'package:levv/model/bo/usuario/perfil/acompanhar.dart';
import 'package:levv/model/bo/usuario/perfil/entregar.dart';
import 'package:levv/model/bo/usuario/perfil/enviar.dart';
import 'package:levv/model/bo/utilizador/administrador.dart';
import 'package:levv/model/bo/utilizador/cliente.dart';
import 'package:levv/model/bo/utilizador/lojista.dart';
import 'package:levv/model/bo/utilizador/transportador.dart';
import 'package:levv/model/bo/veiculo/veiculo.dart';
import 'package:levv/view/frontend/image_levv.dart';
import '../../model/bo/usuario/perfil/entregar.dart';
import '../../model/bo/usuario/perfil/perfil.dart';
import 'package:levv/model/dao/backend/PreferencesLevv.dart';

class BuscadorDeUsuario {
  final PreferencesLevv _preferencesLevv = PreferencesLevv();

  //1
  Future<bool> verificarSeUsuarioEstaCadastrado() async {
    String _celular = await _preferencesLevv.buscarCelular();

    if (_celular != "") {
      return true;
    }
    return false;
  }

  //2
  Future<dynamic> buscarUsuarioCadastrado() async {
    Perfil _perfil = await _preferencesLevv.buscarPerfil();

    switch (_perfil.exibirPerfil()) {
      case Acompanhar.ACOMPANHAR:
        return await _recuperarUsuarioDoTipoAcompanhadorDoPedido();
      case Enviar.ENVIAR:
        return await _recuperarUsuarioDoTipoAdministrador();
      case Entregar.ENTREGAR:
        return await _recuperarUsuarioDoTipoCliente();

    }
  }

  //3 todo retirar p/ dao
  Future<void> _recuperarUsuarioDoTipoAcompanhadorDoPedido() async {
    //todo criar DAO

    String celular = await _preferencesLevv.buscarCelular();

    Celular objeto = CelularBuilder.instance.numero(celular).status(true).semListaDePedidos().build();
/*
    return AcompanhadorBuilder.instance
        .celular(objeto)
        .semStatus()
        .tipoDeUsuario()
        .semLista()
        .build();*/
  }

  //4 todo retirar p/ dao
  Future<void> _recuperarUsuarioDoTipoAdministrador() async {
    //todo criar DAO
    /*
    return AdministradorBuilder.instance
        .numeroDeCelular("0000-0002")
        .status(false)
        .tipoDeUsuario()
        .nome("Eliel")
        .sobrenome("De Souza Faria")
        .cpf("098.562.607-01")
        .nascimento(DateTime.now())
        .enderecoCasa(EnderecoBuilder.instance
            .apelido("Franchesca")
            .logradouro("Rua Cel Cabral")
            .numero("458")
            .complemento("Apt")
            .status(true)
            .tipoDeImovel(TipoDeImovelBuilder.instance
                .tipo(TipoDeImovel.APT)
                .build())
            .bairro(BairroBuilder.instance
                .nome("Centro")
                .cidade(CidadeBuilder.instance
                    .nome("Tubarão")
                    .estado(EstadoBuilder.instance
                        .nome("Santa Catarina")
                        .sigla("SC")
                        .status(false)
                        .build())
                    .status(false)
                    .build())
                .status(false)
                .build())
            .cep(CepBuilder.instance.valor("88701-050").build())
            .geoPoint(const GeoPoint(0, 0))
            .build())
        .enderecoTrabalho(EnderecoBuilder.instance
            .apelido("Quartel")
            .logradouro("Rua Lauro Muller")
            .numero("2327")
            .complemento("Exército")
            .status(false)
            .tipoDeImovel(
                TipoDeImovelBuilder.instance.tipo(TipoDeImovel.LOJA).build())
            .bairro(BairroBuilder.instance
                .nome("Passagem")
                .cidade(CidadeBuilder.instance
                    .nome("Tubarão")
                    .estado(EstadoBuilder.instance
                        .nome("Santa Catarina")
                        .sigla("SC")
                        .status(false)
                        .build())
                    .status(false)
                    .build())
                .status(false)
                .build())
            .cep(CepBuilder.instance.valor("88701101").build())
            .geoPoint(const GeoPoint(0.0, 0.0))
            .build())
        .semLista()
        .build();
        */

  }

  //5 todo retirar p/ dao
  Future<void> _recuperarUsuarioDoTipoCliente() async {
    //todo criar DAO
    /*
    return ClienteBuilder.instance
        .numeroDeCelular("0000-0002")
        .status(false)
        .tipoDeUsuario()
        .nome("Eliel")
        .sobrenome("De Souza Faria")
        .cpf("098.562.607-01")
        .nascimento(DateTime.now())
        .enderecoCasa(EnderecoBuilder.instance
            .apelido("Franchesca")
            .logradouro("Rua Cel Cabral")
            .numero("458")
            .complemento("Apt")
            .status(true)
            .tipoDeImovel(TipoDeImovelBuilder.instance
                .tipo(TipoDeImovel.APT)
                .build())
            .bairro(BairroBuilder.instance
                .nome("Centro")
                .cidade(CidadeBuilder.instance
                    .nome("Tubarão")
                    .estado(EstadoBuilder.instance
                        .nome("Santa Catarina")
                        .sigla("SC")
                        .status(false)
                        .build())
                    .status(false)
                    .build())
                .status(false)
                .build())
            .cep(CepBuilder.instance.valor("88701-050").build())
            .geoPoint(const GeoPoint(0, 0))
            .build())
        .enderecoTrabalho(EnderecoBuilder.instance
            .apelido("Quartel")
            .logradouro("Rua Lauro Muller")
            .numero("2327")
            .complemento("Exército")
            .status(false)
            .tipoDeImovel(
                TipoDeImovelBuilder.instance.tipo(TipoDeImovel.LOJA).build())
            .bairro(BairroBuilder.instance
                .nome("Passagem")
                .cidade(CidadeBuilder.instance
                    .nome("Tubarão")
                    .estado(EstadoBuilder.instance
                        .nome("Santa Catarina")
                        .sigla("SC")
                        .status(false)
                        .build())
                    .status(false)
                    .build())
                .status(false)
                .build())
            .cep(CepBuilder.instance.valor("88701101").build())
            .geoPoint(const GeoPoint(0.0, 0.0))
            .build())
        .semLista()
        .build();*/
  }

  //6 todo retirar p/ dao
  Future<void> _recuperarUsuarioDoTipoTransportador() async {
    //todo criar DAO
    /*
    return TransportadorBuilder.instance
        .numeroDeCelular("(48) 9 9157-7468")
        .status(false)
        .tipoDeUsuario()
        .nome("Nelson")
        .sobrenome("Aguiar Ferreira")
        .cpf("123.456.789-01")
        .nascimento(DateTime.now())
        .semEnderecoCasa()
        .semEnderecoTrabalho()
        .aprovado(true)
        .numeroRegistroDocuento("1234567")
        .semPedidos()
        .identificacao(ArquivoBuilder.instance
            .documento(Image.asset(ImageLevv.LOGO_DO_APP_LEVV))
            .descricao("Nosso")
            .status(false)
            .build())
        .veiculo(VeiculoBuilder.instance
            .modelo("Etios")
            .marca("Toyota")
            .placa("NSB-5818")
            .renavam("01234567")
            .status(false)
            .meioDeTranspor(MeioDeTransporteBuilder.instance
                .descricao(MeioDeTransporte.MOTO)
                .limiteDePeso(
                    PesoBuilder.instance.valorDoPeso(Peso.PESO_VALOR_1).build())
                .limiteDeVolume(VolumeBuilder.instance
                    .valor(Volume.VOLUME_VALOR_40_POR_40)
                    .build())
                .status(false)
                .build())
            .crlv(ArquivoBuilder.instance
                .documento(Image.asset(ImageLevv.LOGO_DO_APP_LEVV))
                .descricao("CNH")
                .status(true)
                .build())
            .build())
        .semLista()
        .build();*/
  }

  //7 todo retirar p/ dao
  Future<void> _recuperarUsuarioDoTipoLojista() async {
    /*
    //todo criar DAO
    return LojistaBuider.instance
        .numeroDeCelular("(48)9 9157-7468")
        .status(false)
        .tipoDeUsuario()
        .semPedido()
        .semEnderecoFavorito()
        .cnpj("12.123.098/0001-00")
        .nomeFantasia("Senhorita Luxo")
        .nomeDaEmpresa("Senhorita luxo acessorios")
        .builder();*/
  }
}
