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

class ArquivoBuilder
    implements ArquivoDocumento, ArquivoDescricao, ArquivoStatus {
  final Arquivo _arquivo = Arquivo();

  ArquivoBuilder._();

  static ArquivoDocumento get instance => ArquivoBuilder._();

  @override
  ArquivoDescricao documento(Image documento) {
    _arquivo.documento = documento;
    return this;
  }

  @override
  ArquivoStatus descricao(String descricao) {
    _arquivo.descricao = descricao;
    return this;
  }

  @override
  Arquivo build() {
    return _arquivo;
  }

  @override
  ArquivoStatus status(bool status) {
    _arquivo.status = status;
    return this;
  }
}

abstract class ArquivoDocumento {
  ArquivoDescricao documento(Image documento);
}

abstract class ArquivoDescricao {
  ArquivoStatus descricao(String descricao);
}

abstract class ArquivoStatus {
  ArquivoStatus status(bool status);

  Arquivo build();
}
