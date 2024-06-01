import 'package:flutter/material.dart';
import 'package:flutterbrasil/features/home/widget/box_todo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 239, 239, 239),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: Center(
                child: Text("Nome Usuário", style: Theme.of(context).textTheme.displayMedium),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijijijijijijijijijhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhu'),
                      BoxTodo(name: 'dedede', body: 'jijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjdiwjdiijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijjijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijjijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijjijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjjijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijjijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijjijijijijijdijdiwjdijwidwidjwidjiwjdiwjidjwidjiwdjiwjijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      const SizedBox(height: 100)
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/save");}, child: const Text("Nova Tarefa")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


