import 'package:flutterbrasil/core/provider/provider.dart';
import 'package:flutterbrasil/core/themes/light_theme.dart';
import 'package:flutterbrasil/features/edit_task/view/edit_task.dart';
import 'package:flutterbrasil/features/home/view/home_view.dart';
import 'package:flutterbrasil/features/login/controller/login_controller.dart';
import 'package:flutterbrasil/features/login/view/login_view.dart';
import 'package:flutterbrasil/features/register/view/register_view.dart';
import 'package:flutterbrasil/features/save_task/view/save_task.dart';
import 'package:flutter/material.dart';

void main() {
  provider();
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
        '/': (context) => LoginView(loginController: getIt.get<LoginController>()),
        '/register': (context) => const RegisterView(),
        '/home': (context) => const HomeView(),
        '/save': (context) => const SaveTaskView(),
        '/edit': (context) => const EditTaskView(),
      },
    );
  }
}

