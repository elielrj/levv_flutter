import 'package:flutter/cupertino.dart';
import 'package:levv/view/frontend/image_levv.dart';

class Arquivo {
  late Image documento;
  late String descricao;
  late bool status;
}

class ArquivoBuilder
    implements ArquivoDocumento, ArquivoDescricao, ArquivoStatus, ArquivoBuild {
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
  ArquivoBuild status(bool status) {
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
  ArquivoBuild status(bool status);
}

abstract class ArquivoBuild {
  Arquivo build();
}
