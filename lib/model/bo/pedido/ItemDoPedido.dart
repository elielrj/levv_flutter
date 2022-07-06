
import 'package:flutter/material.dart';

import '../Endereco/Endereco.dart';

class ItemDoPedido{

  int _ordem;
  int _quantidade;
  double _peso;
  double _volume;
  bool _coleta;
  bool _entrega;

  Endereco _endereco;

  ItemDoPedido(this._ordem, this._quantidade, this._peso, this._volume,
      this._coleta, this._entrega, this._endereco);

  bool get entrega => _entrega;

  set entrega(bool value) {
    _entrega = value;
  }

  bool get coleta => _coleta;

  set coleta(bool value) {
    _coleta = value;
  }

  double get volume => _volume;

  set volume(double value) {
    _volume = value;
  }

  double get peso => _peso;

  set peso(double value) {
    _peso = value;
  }

  int get quantidade => _quantidade;

  set quantidade(int value) {
    _quantidade = value;
  }

  int get ordem => _ordem;

  set ordem(int value) {
    _ordem = value;
  }

  Endereco get endereco => _endereco;

  set endereco(Endereco value) {
    _endereco = value;
  }
}