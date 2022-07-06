
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levv/view/frontend/ColorsLevv.dart';


class TelaEnviar extends StatefulWidget {
  const TelaEnviar({Key? key}) : super(key: key);

  @override
  State<TelaEnviar> createState() => _TelaEnviarState();
}

class _TelaEnviarState extends State<TelaEnviar> {
  int _volume = 20;
  String _meioDeTransporte = "Moto";

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
              Column(
                children: [
                  const Text(
                    "PESO",
                    style: TextStyle(fontSize: 16),
                  ),
                  Card(
                    child: DropdownButton(
                        underline: Container(
                          color: Colors.brown,
                        ),
                        isExpanded: true,
                        value: 1,
                        items: const [
                          DropdownMenuItem(
                            child: Text("Até 1 Kg"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Até 5 Kg"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Até 10 Kg"),
                            value: 10,
                          ),
                          DropdownMenuItem(
                            child: Text("Até 15 Kg"),
                            value: 15,
                          ),
                          DropdownMenuItem(
                            child: Text("Até 20 Kg"),
                            value: 20,
                          ),
                        ],
                        onChanged: (value) =>
                            () {}), //todo criar função de peso
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    const Text("VOLUME", style: TextStyle(fontSize: 16)),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset("imagens/icon_medium_volume.png",
                                  height: 15),
                              Radio(
                                  value: 40,
                                  groupValue: 0,
                                  onChanged: (value) => setState(() {
                                        _volume = int.parse(value.toString());
                                      })),
                              Text("40 x 40"),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "imagens/icon_medium_volume.png",
                                height: 15,
                              ),
                              Radio(
                                  value: 20,
                                  groupValue: 0,
                                  onChanged: (value) => setState(() {
                                        _volume = int.parse(value.toString());
                                      })),
                              Text("20 X 20"),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("imagens/icon_medium_volume.png",
                                  height: 15),
                              Radio(
                                  value: 60,
                                  groupValue: 0,
                                  onChanged: (value) => setState(() {
                                        _volume = int.parse(value.toString());
                                      })),
                              Text("60 x 60"),
                            ],
                          )
                        ]),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("MEIO DE TRANSPORTE",
                      style: TextStyle(fontSize: 16)),
                  DropdownButton(
                      underline: Container(
                        color: Colors.brown,
                      ),
                      isExpanded: true,
                      value: 2,
                      items: const [
                        DropdownMenuItem(
                          child: Text("Moto"),
                          value: "moto",
                        ),
                        DropdownMenuItem(
                          child: Text("Bike"),
                          value: "bike",
                        ),
                        DropdownMenuItem(
                          child: Text("Carro"),
                          value: "carro",
                        ),
                      ],
                      onChanged: (value) => setState(() {
                            _meioDeTransporte = value.toString();
                          }))
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Column(
                    children: [
                      Text("ROTAS"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(backgroundColor: Colors.white),
                                  labelText: "Endereço de coleta",
                                  prefixIcon: Icon(Icons.email_outlined),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(backgroundColor: Colors.white),
                                  labelText: "Endereço de entrega",
                                  prefixIcon: Icon(Icons.email_outlined),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("VALOR"),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(backgroundColor: Colors.white),
                          labelText: "Valor",
                          prefixIcon: Icon(Icons.monetization_on),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle:
                            const TextStyle(color: Colors.black, fontSize: 18),
                        padding: const EdgeInsets.all(0),
                        minimumSize: const Size(180, 65),
                        elevation: 2,
                        primary: Colors.black,
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        //todo limpar campos de um pedido//
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            widthFactor: 1,
                            child: Image.asset(
                              "imagens/icon_register.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const Center(
                            widthFactor: 2,
                            child: Text("Enviar"),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle:
                            const TextStyle(color: Colors.black, fontSize: 18),
                        padding: const EdgeInsets.all(0),
                        minimumSize: const Size(180, 65),
                        elevation: 2,
                        primary: Colors.black,
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        //todo limpar campos de um pedido//
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            widthFactor: 1,
                            child: Image.asset(
                              "imagens/icon_trash.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const Center(
                            widthFactor: 2,
                            child: Text("Limpar"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
