import 'package:flutter/material.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key});

    // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 232, 232, 232),
        child: Form(
          // key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.green,
                    height: 150,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Navigator.pop(context),
                              child: const Align(alignment: Alignment.centerLeft ,child: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.close)))),
                            Text("Editar Tarefa", style: Theme.of(context).textTheme.displayLarge),
                            const SizedBox(width: 26)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.centerLeft ,child: Text("Título", style: Theme.of(context).textTheme.headlineLarge)),
                        const SizedBox(height: 10),
                        TextFormField(decoration: const InputDecoration(labelText: 'Adicione um título',border: OutlineInputBorder())),
                        const SizedBox(height: 20),
                        Align(alignment: Alignment.centerLeft ,child: Text("Anotações", style: Theme.of(context).textTheme.headlineLarge)),
                        const SizedBox(height: 10),
                        TextFormField(maxLines: 10, decoration: const InputDecoration(labelText: 'Adicione uma anotação',border: OutlineInputBorder())),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/register");}, child: const Text("Editar")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}