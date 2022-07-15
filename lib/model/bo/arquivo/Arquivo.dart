import 'package:flutter/cupertino.dart';
import 'package:levv/view/frontend/image_levv.dart';

class Arquivo {
  late Image _documento;
  late String _descricao;
  late bool _status;

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  Image get documento => _documento;

  set documento(Image value) {
    _documento = value;
  }

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }
}

class ArquivoBuilder {
  static final Arquivo _arquivo = Arquivo();

  ArquivoBuilder() {
    _arquivo.documento = Image.asset(ImageLevv.MOTO_DELIVERY);
    _arquivo.descricao = "documento";
    _arquivo.status = false;
  }

  ArquivoBuilder comDocumento(Image documento) {
    _arquivo.documento = documento;
    return this;
  }

  ArquivoBuilder comDescricao(String descricao) {
    _arquivo.descricao = descricao;
    return this;
  }

  ArquivoBuilder comStatus(bool status) {
    _arquivo.status = status;
    return this;
  }

  Arquivo create(){
    return _arquivo;
  }
}
