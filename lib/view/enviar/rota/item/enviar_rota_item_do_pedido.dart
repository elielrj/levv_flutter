import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/bairro.dart';
import 'package:levv/model/bo/endereco/cep.dart';
import 'package:levv/model/bo/endereco/cidade.dart';
import 'package:levv/model/bo/endereco/estado.dart';
import 'package:levv/model/bo/pedido/item_do_pedido.dart';
import 'package:levv/view/frontend/text_levv.dart';

import '../../../../model/bo/endereco/endereco.dart';

class EnviarRotaItemDoPedido extends StatefulWidget {
  EnviarRotaItemDoPedido({Key? key, required this.itemDoPedido})
      : super(key: key);

  ItemDoPedido itemDoPedido;

  @override
  State<EnviarRotaItemDoPedido> createState() => _EnviarRotaItemDoPedidoState();
}

class _EnviarRotaItemDoPedidoState extends State<EnviarRotaItemDoPedido> {
  final _controllerColeta = TextEditingController();
  final _controllerEntrega = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print("Coleta: " + widget.itemDoPedido.coleta.toString());
    //print("Entrega: " + widget.itemDoPedido.entrega.toString());

    //_controllerColeta.text = widget.itemDoPedido.coleta.toString();
    //_controllerEntrega.text = widget.itemDoPedido.entrega.toString();

    return Card(
      child: Column(
        children: [
          Text(
            "Item: ${widget.itemDoPedido.ordem.toString()}",
            style: const TextStyle(
              fontSize: 10,
              backgroundColor: Colors.white70,
            ),
          ),
          Row(
            children: [_coleta(widget.itemDoPedido.coleta), _icones()],
          ),
          Row(
            children: [_entrega(widget.itemDoPedido.entrega), _icones()],
          )
        ],
      ),
    );
  }

  Widget _icones() => Column(children: [
        IconButton(
          icon: const Icon(
            Icons.location_on_outlined,
            size: 20,
          ),
          color: Colors.black,
          onPressed: () => _buscarLocalizacao(),
        ),
        IconButton(
          icon: const Icon(
            Icons.map,
            size: 20,
          ),
          color: Colors.black,
          onPressed: () => _exibirMapa(),
        )
      ]);

  Widget _entrega(Endereco endereco) => Expanded(
        child: TextField(
          controller: _controllerEntrega,
          keyboardType: TextInputType.streetAddress,
          decoration: InputDecoration(
              labelStyle: const TextStyle(
                  backgroundColor: Colors.white, color: Colors.green),
              labelText: TextLevv.ENDERECO_ENTREGA,
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              suffixIcon: _controllerEntrega.text.isEmpty
                  ? Container(
                      width: 0,
                    )
                  : IconButton(
                      onPressed: () => _limparEnderecoDeEntrega(),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
              fillColor: Colors.white,
              filled: true),
          onChanged: (texto) => _buscarSugestaoDeEndereco(texto),
          onSubmitted: _salvarEnderecoDeEntrega(),
        ),
      );

  Widget _coleta(Endereco endereco) => Expanded(
        child: TextField(
          controller: _controllerColeta,
          keyboardType: TextInputType.streetAddress,
          decoration: InputDecoration(
              labelStyle: const TextStyle(
                  backgroundColor: Colors.white, color: Colors.blue),
              labelText: TextLevv.ENDERECO_COLETA,
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              suffixIcon: _controllerColeta.text.isEmpty
                  ? Container(
                      width: 0,
                    )
                  : IconButton(
                      onPressed: () => _limparEnderecoDeColeta(),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.redAccent,
                      )),
              fillColor: Colors.white,
              filled: true),
          onChanged: (texto) => _buscarSugestaoDeEndereco(texto),
          onSubmitted: _salvarEnderecoDeColeta(),
        ),
      );

  _limparEnderecoDeEntrega() {
    _controllerEntrega.clear();
  }

  _limparEnderecoDeColeta() {
    _controllerColeta.clear();
  }

  _buscarSugestaoDeEndereco(String texto) {
    //todo buscar sugestão
  }

  _salvarEnderecoDeColeta() {
    String enderecoDigitado = _controllerColeta.text.toString();

    //todo buscar objeto Endereço com o valor digitado

    Endereco endereco = EnderecoBuilder()
        .comCep(CepBuilder().comCep("").create())
        .comGeologalizacao(const GeoPoint(0, 0))
        .comLogradouro(enderecoDigitado)
        .comNumero("")
        .comBairro(BairroBuilder()
            .nomeDoBairro("")
            .pertenceACidade(CidadeBuilder()
                .comNome("")
                .pertenceAoEstado(EstadoBuilder.instance.nome("").sigla("").status(false).build())
                .create())
            .create())
        .create();

    Estado estado = EstadoBuilder.instance.nome("").sigla("").status(false).build();

    Cidade cidade = CidadeBuilder.instance.nome("").estado(estado).status(false).build();


    widget.itemDoPedido.coleta = endereco;
  }

  _salvarEnderecoDeEntrega() {
    String enderecoDigitado = _controllerEntrega.text.toString();

    //todo buscar objeto Endereço com o valor digitado

    Endereco endereco = EnderecoBuilder()
        .comCep(CepBuilder().comCep("").create())
        .comGeologalizacao(const GeoPoint(0, 0))
        .comLogradouro(enderecoDigitado)
        .comNumero("")
        .comBairro(BairroBuilder()
            .nomeDoBairro("")
            .pertenceACidade(CidadeBuilder()
                .comNome("")
                .pertenceAoEstado(EstadoBuilder.instance.nome("").sigla("").status(false).build())
                .create())
            .create())
        .create();

    widget.itemDoPedido.coleta = endereco;
  }

  _buscarLocalizacao() {
    //todo exibir mapa
  }

  _exibirMapa() {
    //todo exibir mapa
  }
}
