
import 'package:flutter/cupertino.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

class PathProviderLevv extends StatefulWidget {
  const PathProviderLevv({Key? key}) : super(key: key);

  @override
  State<PathProviderLevv> createState() => _PathProviderLevvState();
}

class _PathProviderLevvState extends State<PathProviderLevv> {
  List _listaDeEnderecos = [];

  Future<File> _getFile() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/dados.json");
  }

  _salvarArquivo(Endereco endereco, String tipoDoEndereco) async {
    var arquivo = await _getFile();

    Map<String, dynamic> endereco = Map();
    endereco[tipoDoEndereco];
    endereco[endereco];
    _listaDeEnderecos.add(endereco);

    String dados = json.encode(_listaDeEnderecos);
    arquivo.writeAsString(dados);
  }

  _lerArquivo() async {
    try {
      final arquivo = await _getFile();
      return arquivo.readAsString();
    } catch (e) {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    _lerArquivo().then((dados) {
      setState(() {
        _listaDeEnderecos = json.decode(dados);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
