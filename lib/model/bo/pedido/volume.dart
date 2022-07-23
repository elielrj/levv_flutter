import 'package:flutter/material.dart';

class Volume {
  static const VOLUME_20_POR_20 = "20 x 20";
  static const VOLUME_40_POR_40 = "40 x 40";
  static const VOLUME_60_POR_60 = "60 x 60";

  static const VOLUME_VALOR_20_POR_20 = 1;
  static const VOLUME_VALOR_40_POR_40 = 2;
  static const VOLUME_VALOR_60_POR_60 = 3;

  late int valor;
}

class VolumeBuilder implements VolumeValor, VolumeBuild {
  final Volume _volume = Volume();

  VolumeBuilder._();

  static VolumeValor get instance => VolumeBuilder._();

  @override
  Volume build() {
   return _volume;
  }

  @override
  VolumeBuild valor(int valor) {
    _volume.valor = valor;
    return this;
  }


}

abstract class VolumeValor {
  VolumeBuild valor(int valor);
}

abstract class VolumeBuild{
  Volume build();
}
