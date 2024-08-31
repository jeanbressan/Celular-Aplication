
import 'package:flutter/material.dart';
import 'package:frutas_varejo/src/authenticator/components/campo_text_custom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 226, 241, 2),
    body: Column(
      children: [
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 226, 241, 2),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: const Column(
              children: [
                //Nome
                CampoTextCustom(label: 'Nome', icon: Icons.person,),
                //E-mail
                CampoTextCustom(label: 'CPF', icon: Icons.contacts,),
                //Celular
                CampoTextCustom(label: 'E-mail', icon: Icons.email,),
                //CPF
                CampoTextCustom(label: 'Celular', icon: Icons.call,),
                //Senha
                CampoTextCustom(label: 'Senha', icon: Icons.lock, isobscure: true,),
              ],
            ),
          ),
        )
      ],
    ),
  );
  }
}