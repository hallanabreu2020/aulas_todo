import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterbrasil/features/login/controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  LoginController loginController = LoginController();

  Future<bool> datasource()async{
    Dio dio = Dio();
    String urlbase = "https://parseapi.back4app.com/parse/functions/";
    Map<String, dynamic> data = {
      "email":"hallanabreudev@gmail.com",
      "password":"123456789"
    };
    Map<String, dynamic> headers = {
      "Context-type": "application/json",
      "X-Parse-Application-Id": "yXS4x5THhmqy5iqcL35EjfUl5vztpADZ3kNJ9KO7",
      "X-Parse-REST-API-Key": "M2iyPo2pq8IVAPa9hbZNUsfCmplhEzt0PDvk81i0",
      "X-Parse-Session-Token": "r:237271cd8b6bd701a6124c58d2f5b912"
    };
    try {
      Response response = await dio.post(
        '${urlbase}login',
        data: data,
        options: Options(
          headers: headers
        )
      );
      return true;
    } on DioException catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text("Flutter Brasil", style: Theme.of(context).textTheme.displayMedium),
              ),
              Column(
                children: [
                  Align(alignment: Alignment.centerLeft ,child: Text("Email", style: Theme.of(context).textTheme.displayLarge)),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: loginController.emailController,
                  ),
                  const SizedBox(height: 20),
                  Align(alignment: Alignment.centerLeft ,child: Text("Senha", style: Theme.of(context).textTheme.displayLarge)),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: loginController.passwordController,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: InkWell(
                      onTap: ()=> Navigator.pushNamed(context, "/register"),
                      child: Text("Criar conta", style: Theme.of(context).textTheme.titleLarge)),
                  ),
                ],
              ),
              ElevatedButton(onPressed: ()async{
                if(loginController.isLoand) return;
                loginController.gerenciadorDeEstado(true);
                bool teste = await datasource();
                print(teste);
                loginController.gerenciadorDeEstado(false);
                if(teste){
                  Navigator.pushNamed(context, "/home", arguments: 30);
                }else{
                  print('Erro ao logar');
                }
                
              }, child: loginController.isLoand
               ?const CircularProgressIndicator()
               :const Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}