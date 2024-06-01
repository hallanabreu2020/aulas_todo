import 'package:flutterbrasil/core/themes/light_theme.dart';
import 'package:flutterbrasil/features/edit_task/view/edit_task.dart';
import 'package:flutterbrasil/features/home/view/home_view.dart';
import 'package:flutterbrasil/features/login/view/login_view.dart';
import 'package:flutterbrasil/features/register/view/register_view.dart';
import 'package:flutterbrasil/features/save_task/view/save_task.dart';
import 'core/provider/providers.dart';
import 'package:flutter/material.dart';

void main() {
  setupProviders();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LightTheme.theme,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
        '/home': (context) => const HomeView(),
        '/save': (context) => const SaveTaskView(),
        '/edit': (context) => const EditTaskView(),
      },
    );
  }
}

