import 'package:flutter/material.dart';
import 'package:flutterbrasil/features/home/widget/box_todo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 239, 239, 239),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
                      BoxTodo(name: 'dedede', body: 'jijijijijijijijijijij....',),
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
                child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/");}, child: const Text("Nova Tarefa")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


