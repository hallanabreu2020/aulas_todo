import 'package:flutter/material.dart';

class LoginController with ChangeNotifier{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoand = false;
  gerenciadorDeEstado(bool value){
    isLoand = value;
    notifyListeners();
  }
}