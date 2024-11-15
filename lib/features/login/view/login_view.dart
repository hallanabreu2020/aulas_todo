import 'package:flutter/material.dart';
import 'package:flutterbrasil/features/login/controller/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController loginController;
  const LoginView({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: loginController,
        builder: (context, controller) {
          return Container(
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
                    bool teste = await loginController.login();
                    if(teste){
                      if(context.mounted) Navigator.pushNamed(context, "/home", arguments: 30);
                    }
                  }, child: loginController.isLoand
                   ?const CircularProgressIndicator()
                   :const Text("Login")),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}