
import 'package:flutter/material.dart';

abstract class CrudDAO<T>{

  Future<void> create(T objeto);
  Future<List<T>> retrive();
  Future<T> retriveForPhone(String phone);
  Future<void> update(T objeto);
  Future<void> delete(T objeto);

}