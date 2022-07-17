import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:levv/model/bo/endereco/Bairro.dart';
import 'package:levv/model/bo/endereco/Cep.dart';
import 'package:levv/model/bo/endereco/Cidade.dart';
import 'package:levv/model/bo/endereco/Estado.dart';
import 'package:levv/model/bo/pedido/ItemDoPedido.dart';
import 'package:levv/view/frontend/text_levv.dart';

import '../../../../model/bo/endereco/Endereco.dart';

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

    _controllerColeta.text = widget.itemDoPedido.coleta.toString();
    _controllerEntrega.text = widget.itemDoPedido.entrega.toString();

    return Card(
      child: Column(
        children: [
          _coleta(widget.itemDoPedido.coleta),
          _entrega(widget.itemDoPedido.entrega),
        ],
      ),
    );
  }

  Widget _entrega(Endereco endereco) => TextField(
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
      );

  Widget _coleta(Endereco endereco) => TextField(
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
                .pertenceAoEstado(
                    EstadoBuilder().comNome("").create())
                .create())
            .create())
        .create();

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
                .pertenceAoEstado(
                    EstadoBuilder().comNome("").create())
                .create())
            .create())
        .create();

    widget.itemDoPedido.coleta = endereco;
  }
}
