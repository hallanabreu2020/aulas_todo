import 'package:flutter/material.dart';
import 'package:flutterbrasil/core/datasources/user/user_datasource.dart';

class LoginController with ChangeNotifier{
  UserDatasource userDatasource = UserDatasource();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoand = false;
  updateIsLoand(bool value){
    isLoand = value;
    notifyListeners();
  }

  Future<bool> login()async{
    if(isLoand)return false;
    if(emailController.text == '' || passwordController.text == ''){
      print('Adicione um valor');
      return false;
    }
    updateIsLoand(true);
    bool response = await userDatasource.login(email: emailController.text, password: passwordController.text);
    updateIsLoand(false);
    if(response == false){
      print('Erro');
    }
    return response;
  }
}