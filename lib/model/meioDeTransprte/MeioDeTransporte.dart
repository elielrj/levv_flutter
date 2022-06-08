
import 'package:flutter/material.dart';

class MeioDeTransporte{


  static String MEIO_DE_TRANSPORTE_MOTO = "Moto";
  static String MEIO_DE_TRANSPORTE_BIKE = "Bike";
  static String MEIO_DE_TRANSPORTE_CARRO = "Carro";

  int selectedMeioDeTransporte = MeioDeTransporte.MOTO;

  static int MOTO = 0;
  static int BIKE = 1;
  static int CARRO = 2;

  setSelectedMeioDeTransporte(int meioDeTransporte){
    selectedMeioDeTransporte = meioDeTransporte;
  }

  getSelectedMeioDeTransporte(){
    return selectedMeioDeTransporte;
  }

}