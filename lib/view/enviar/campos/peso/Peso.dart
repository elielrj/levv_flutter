import 'package:flutter/material.dart';

class Peso {
  static String PESO_1_KG = "Até 1 Kg";
  static String PESO_5_KG = "Até 5 Kg";
  static String PESO_10_KG = "Até 10 Kg";
  static String PESO_15_KG = "Até 15 Kg";
  static String PESO_20_KG = "Até 20 Kg";

  int selectedPeso = Peso.PESO_1;

  static int PESO_1 = 0;
  static int PESO_5 = 1;
  static int PESO_10 = 2;
  static int PESO_15 = 3;
  static int PESO_20 = 4;
/*
  static List<String> pesosDisponiveis() {
    List<String> lista = [];

    lista.add(PESO_1_KG);
    lista.add(PESO_5_KG);
    lista.add(PESO_10_KG);
    lista.add(PESO_15_KG);
    lista.add(PESO_20_KG);

    return lista;
  }

  static List<int> pesosDisponiveisInt() {
    List<int> lista = [];

    lista.add(PESO_1);
    lista.add(PESO_5);
    lista.add(PESO_10);
    lista.add(PESO_15);
    lista.add(PESO_20);

    return lista;
  }*/

  void setSelectedPeso(int peso) {
    selectedPeso = peso;
  }


}
