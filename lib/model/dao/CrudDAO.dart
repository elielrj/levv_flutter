
import 'package:flutter/material.dart';

abstract class CrudDAO<T>{

  void create(T objeto);
  List<T> retrive();
  void update(T objeto);
  void delete(T objeto);

}