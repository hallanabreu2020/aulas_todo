
import 'package:flutter/material.dart';

class BoxTodo extends StatelessWidget {
  const BoxTodo({super.key, required this.body, required this.name});

  final String name;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(alignment: Alignment.centerLeft ,child: Text(name, style: Theme.of(context).textTheme.displaySmall)),
              const SizedBox(height: 10),
              Align(alignment: Alignment.centerLeft ,child: Text(body, style: Theme.of(context).textTheme.headlineLarge)),
            ],
          ),
        ),
      ),
    );
  }
}