import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                  Align(alignment: Alignment.centerLeft ,child: Text("Nome", style: Theme.of(context).textTheme.displayLarge)),
                  const SizedBox(height: 10),
                  TextFormField(),
                  const SizedBox(height: 20),
                  Align(alignment: Alignment.centerLeft ,child: Text("Email", style: Theme.of(context).textTheme.displayLarge)),
                  const SizedBox(height: 10),
                  TextFormField(),
                  const SizedBox(height: 20),
                  Align(alignment: Alignment.centerLeft ,child: Text("Senha", style: Theme.of(context).textTheme.displayLarge)),
                  const SizedBox(height: 10),
                  TextFormField(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: InkWell(
                      onTap: ()=> Navigator.pushNamed(context, "/"),
                      child: Text("Fazer login", style: Theme.of(context).textTheme.titleLarge)),
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/");}, child: const Text("Cadastro")),
            ],
          ),
        ),
      ),
    );
  }
}