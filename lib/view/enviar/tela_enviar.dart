import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Bairro.dart';
import 'package:levv/model/bo/endereco/Cep.dart';
import 'package:levv/model/bo/endereco/Cidade.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/endereco/Estado.dart';
import 'package:levv/model/bo/endereco/TipoDeImovel.dart';
import 'package:levv/model/bo/pedido/ItemDoPedido.dart';
import 'package:levv/view/enviar/botao/enviar_botao.dart';
import 'package:levv/view/enviar/meio_de_transporte/enviar_meio_de_transporte.dart';
import 'package:levv/view/enviar/peso/enviar_peso.dart';
import 'package:levv/view/enviar/rota/enviar_rota.dart';
import 'package:levv/view/enviar/valor/enviar_valor.dart';
import 'package:levv/view/enviar/volume/enviar_volume.dart';
import 'package:levv/view/frontend/colors_levv.dart';

import '../../model/bo/pedido/Pedido.dart';

class TelaEnviar extends StatefulWidget {
  const TelaEnviar({Key? key}) : super(key: key);

  @override
  State<TelaEnviar> createState() => _TelaEnviarState();
}

class _TelaEnviarState extends State<TelaEnviar> {
  Pedido pedido = PedidoBuilder().comItensDoPedido([
    ItemDoPedidoBuilder()
        .deOrdem(1)
        .enderecoDeEntrega(EnderecoBuilder()
            .comBairro(BairroBuilder()
                .nomeDoBairro("Passagem")
                .pertenceACidade(CidadeBuilder()
                    .comNome("Tubarao")
                    .pertenceAoEstado(EstadoBuilder()
                        .comNome("Santa Catarina")
                        .comSigla("SC")
                        .create())
                    .create())
                .create())
            .comNumero("2327")
            .comLogradouro("Rua Lauro Muller")
            .comCep(CepBuilder().comCep("88701-101").create())
            .comGeologalizacao(const GeoPoint(2.0, 2.1))
            .comComplemento("Quartel")
            .comStatus(true)
            .comTipoDeImovel(
                TipoDeImovelBuilder().doTipo(TipoDeImovel.LOJA).create())
            .create())
        .enderecoDeColeta(EnderecoBuilder()
            .comBairro(BairroBuilder()
                .nomeDoBairro("Passagem")
                .pertenceACidade(CidadeBuilder()
                    .comNome("Tubarao")
                    .pertenceAoEstado(EstadoBuilder()
                        .comNome("Santa Catarina")
                        .comSigla("SC")
                        .create())
                    .create())
                .create())
            .comNumero("2327")
            .comLogradouro("Rua Lauro Muller")
            .comCep(CepBuilder().comCep("88701-101").create())
            .comGeologalizacao(const GeoPoint(2.0, 2.1))
            .comComplemento("Quartel")
            .comStatus(true)
            .comTipoDeImovel(
                TipoDeImovelBuilder().doTipo(TipoDeImovel.LOJA).create())
            .create())
        .create(),
    ItemDoPedidoBuilder()
        .deOrdem(2)
        .enderecoDeEntrega(EnderecoBuilder()
            .comBairro(BairroBuilder()
                .nomeDoBairro("Passagem")
                .pertenceACidade(CidadeBuilder()
                    .comNome("Tubarao")
                    .pertenceAoEstado(EstadoBuilder()
                        .comNome("Santa Catarina")
                        .comSigla("SC")
                        .create())
                    .create())
                .create())
            .comNumero("2327")
            .comLogradouro("Rua Lauro Muller")
            .comCep(CepBuilder().comCep("88701-101").create())
            .comGeologalizacao(const GeoPoint(2.0, 2.1))
            .comComplemento("Quartel")
            .comStatus(true)
            .comTipoDeImovel(
                TipoDeImovelBuilder().doTipo(TipoDeImovel.LOJA).create())
            .create())
        .enderecoDeColeta(EnderecoBuilder()
            .comBairro(BairroBuilder()
                .nomeDoBairro("Passagem")
                .pertenceACidade(CidadeBuilder()
                    .comNome("Tubarao")
                    .pertenceAoEstado(EstadoBuilder()
                        .comNome("Santa Catarina")
                        .comSigla("SC")
                        .create())
                    .create())
                .create())
            .comNumero("2327")
            .comLogradouro("Rua Lauro Muller")
            .comCep(CepBuilder().comCep("88701-101").create())
            .comGeologalizacao(const GeoPoint(2.0, 2.1))
            .comComplemento("Quartel")
            .comStatus(true)
            .comTipoDeImovel(
                TipoDeImovelBuilder().doTipo(TipoDeImovel.LOJA).create())
            .create())
        .create(),
    ItemDoPedidoBuilder()
        .deOrdem(3)
        .enderecoDeEntrega(EnderecoBuilder()
            .comBairro(BairroBuilder()
                .nomeDoBairro("Passagem")
                .pertenceACidade(CidadeBuilder()
                    .comNome("Tubarao")
                    .pertenceAoEstado(EstadoBuilder()
                        .comNome("Santa Catarina")
                        .comSigla("SC")
                        .create())
                    .create())
                .create())
            .comNumero("2327")
            .comLogradouro("Rua Lauro Muller")
            .comCep(CepBuilder().comCep("88701-101").create())
            .comGeologalizacao(const GeoPoint(2.0, 2.1))
            .comComplemento("Quartel")
            .comStatus(true)
            .comTipoDeImovel(
                TipoDeImovelBuilder().doTipo(TipoDeImovel.LOJA).create())
            .create())
        .enderecoDeColeta(EnderecoBuilder()
            .comBairro(BairroBuilder()
                .nomeDoBairro("Passagem")
                .pertenceACidade(CidadeBuilder()
                    .comNome("Tubarao")
                    .pertenceAoEstado(EstadoBuilder()
                        .comNome("Santa Catarina")
                        .comSigla("SC")
                        .create())
                    .create())
                .create())
            .comNumero("2327")
            .comLogradouro("Rua Lauro Muller")
            .comCep(CepBuilder().comCep("88701-101").create())
            .comGeologalizacao(const GeoPoint(2.0, 2.1))
            .comComplemento("Quartel")
            .comStatus(true)
            .comTipoDeImovel(
                TipoDeImovelBuilder().doTipo(TipoDeImovel.LOJA).create())
            .create())
        .create()
  ]).create();

  final valor = 0.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLevv.FUNDO,
      appBar: AppBar(
        title: const Text("Enviar um produto"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //1
              EnviarPeso(
                pedido: pedido,
              ),
              //2
              EnviarVolume(
                pedido: pedido,
              ),
              //3
              EnviarMeioDeTransporte(pedido: pedido),
              //4
              EnviarRota(
                pedido: pedido,
              ),
              //5
              EnviarValor(pedido: pedido),
              //6
              EnviarBotao(
                pedido: pedido,
              )
            ],
          ),
        ),
      ),
    );
  }
}
