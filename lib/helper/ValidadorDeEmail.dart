import 'dart:core';
import 'package:email_validator/email_validator.dart';

class ValidadorDeEmail{

  static bool validarEmail(String email) => EmailValidator.validate(email);

}