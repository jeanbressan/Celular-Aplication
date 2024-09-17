
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Nome
                // const CampoTextCustom(label: 'Nome', icon: Icons.person,),
                //CPF
                //const CampoTextCustom(label: 'CPF', icon: Icons.contacts,),
                //E-mail
                const CampoTextCustom(label: 'E-mail', icon: Icons.email,),
                //CPF
                //const CampoTextCustom(label: 'Celular', icon: Icons.call,),
                //Senha
                const CampoTextCustom(label: 'Senha', icon: Icons.lock, isSecret: true,),

                //Botão entrar
                SizedBox( 
                 height: 50,
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 226, 241, 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                    )
                  ),
                  onPressed: () {}, 
                  child: const Text('Entrar', style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                ), 

                // Link Recuperar a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {}, child: const Text('Recuperar sua senha',
                    style: TextStyle(color: Colors.black),
                    ),
                  )
                ),

                // Dividor

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withAlpha(90),
                        thickness: 2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Text('Ou'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withAlpha(90),
                        thickness: 2,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
  }
}