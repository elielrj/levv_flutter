import 'package:flutter/material.dart';

class Volume {
  static const VOLUME_20_POR_20 = "20 x 20";
  static const VOLUME_40_POR_40 = "40 x 40";
  static const VOLUME_60_POR_60 = "60 x 60";

  static const VOLUME_VALOR_20_POR_20 = 1;
  static const VOLUME_VALOR_40_POR_40 = 2;
  static const VOLUME_VALOR_60_POR_60= 3;

  late int _volume;

  int get volume => _volume;

  set volume(int value) {
    _volume = value;
  }

}

class VolumeBuilder{

  static final Volume _volume = Volume();

  VolumeBuilder(){
    _volume.volume = Volume.VOLUME_VALOR_20_POR_20;
  }

  VolumeBuilder comVolume(int volume){
    _volume.volume = volume;
    return this;
  }

  Volume create(){
    return _volume;
  }
}