
import 'package:flutter/material.dart';

abstract class CrudDAO<T>{

  void create(T objeto);
  List<T> retrive();
  T retriveForPhone(String phone);
  void update(T objeto);
  void delete(T objeto);

}