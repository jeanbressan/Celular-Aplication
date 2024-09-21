import 'package:flutter/material.dart';
import 'package:frutas_varejo/src/authenticator/login_screen.dart';
import 'package:frutas_varejo/src/configuraco/cores_customizadas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 226, 241, 2),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: CoresCustomizadas.appCorCustomizada,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
