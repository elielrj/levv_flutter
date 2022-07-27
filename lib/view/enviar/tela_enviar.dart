import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/bairro.dart';
import 'package:levv/model/bo/endereco/cep.dart';
import 'package:levv/model/bo/endereco/cidade.dart';
import 'package:levv/model/bo/endereco/endereco.dart';
import 'package:levv/model/bo/endereco/estado.dart';
import 'package:levv/model/bo/endereco/tipo_de_imovel.dart';
import 'package:levv/model/bo/meioDeTransprte/meio_de_transporte.dart';
import 'package:levv/model/bo/pedido/item_do_pedido.dart';
import 'package:levv/model/bo/pedido/volume.dart';
import 'package:levv/model/bo/usuario/tipo_de_usuario.dart';
import 'package:levv/model/bo/usuario/usuario.dart';
import 'package:levv/view/enviar/botao/enviar_botao.dart';
import 'package:levv/view/enviar/meio_de_transporte/enviar_meio_de_transporte.dart';
import 'package:levv/view/enviar/peso/enviar_peso.dart';
import 'package:levv/view/enviar/rota/enviar_rota.dart';
import 'package:levv/view/enviar/valor/enviar_valor.dart';
import 'package:levv/view/enviar/volume/enviar_volume.dart';
import 'package:levv/view/frontend/colors_levv.dart';
import 'package:levv/view/frontend/image_levv.dart';
import 'package:levv/view/frontend/text_levv.dart';

import '../../model/bo/pedido/pedido.dart';
import '../../model/bo/pedido/Peso.dart';

class TelaEnviar extends StatefulWidget {
  TelaEnviar({Key? key, required this.usuario}) : super(key: key);
  final Usuario usuario;

  @override
  State<TelaEnviar> createState() => _TelaEnviarState();
}

class _TelaEnviarState extends State<TelaEnviar> {
  Pedido pedido = Pedido();

  final valor = 0.00;

  @override
  Widget build(BuildContext context) {
    _inicializar();

    return Scaffold(
      backgroundColor: ColorsLevv.FUNDO,
      appBar: AppBar(
        title: const Text(TextLevv.ENVIAR_UM_PRODUTO),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 32, top: 16, right: 8, left: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                ImageLevv.LOGO_DO_APP_LEVV,
                width: 90,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                ],
              ),
            ),

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
    );
  }

  _inicializar() {
    Peso pesoInicial =
        PesoBuilder.instance.valorDoPeso(Peso.PESO_VALOR_1).build();

    Volume volumeInicial =
        VolumeBuilder.instance.valor(Volume.VOLUME_VALOR_20_POR_20).build();

    MeioDeTransporte meioDeTransporteInicial = MeioDeTransporteBuilder.instance
        .descricao(MeioDeTransporte.MOTO)
        .limiteDePeso(pesoInicial)
        .limiteDeVolume(volumeInicial)
        .status(true)
        .build();

    pedido.valor = 0.0;

    List<ItemDoPedido> listaDeItens = [];

    TipoDeImovel tipoDeImovel =
        TipoDeImovelBuilder.instance.tipo(TipoDeUsuario.ACOMPANHADOR_DO_PEDIDO).build();

    Endereco endereco = EnderecoBuilder.instance
        .apelido("Casa")
        .logradouro("Rua Cel")
        .numero("248")
        .complemento("Casa")
        .status(true)
        .tipoDeImovel(tipoDeImovel)
        .bairro(BairroBuilder.instance
            .nome("Centro")
            .cidade(CidadeBuilder.instance
                .nome("Tubarão")
                .estado(EstadoBuilder.instance
                    .nome("Santa Catarina")
                    .sigla("SC")
                    .status(true)
                    .build())
                .status(true)
                .build())
            .status(true)
            .build())
        .cep(CepBuilder.instance.valor("000010-123").build())
        .geoPoint(const GeoPoint(0, 0))
        .build();

    ItemDoPedido itemColeta = ItemDoPedidoBuilder.instance
        .enderecoColeta(endereco)
        .enderecoEntrega(endereco)
        .ordemDoItem(1)
        .buid();

    listaDeItens.add(itemColeta);

    pedido = PedidoBuilder.instance
        .numero("1")
        .dataHora(DateTime.now())
        .valor(0.01)
        .peso(pesoInicial)
        .volume(volumeInicial)
        .oPedidoEstaDisponivel(true)
        .oPedidoFoiEntregue(false)
        .oPedidoEstaPago(false)
        .meioDeTransporte(meioDeTransporteInicial)
        .itensDoPedido(listaDeItens)
        .usuarioDoPedido(widget.usuario)
        .semTransportadorDoPedido()
        .build();
  }
}
