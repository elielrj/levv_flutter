
import 'package:flutter/material.dart';


class Volume {
  static String VOLUME_20X20 = "20 X 20";
  static String VOLUME_40X40 = "40 x 40";
  static String VOLUME_60X60 = "60 x 60";

  int selectedVolume = Volume.VOLUME_20;

  static int VOLUME_20 = 0;
  static int VOLUME_40 = 1;
  static int VOLUME_60 = 2;

  void setSelectedVolume(int volume) {
    selectedVolume = volume;
  }
}