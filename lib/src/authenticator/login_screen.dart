
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:frutas_varejo/src/authenticator/components/campo_text_custom.dart';
import 'package:frutas_varejo/src/configuraco/cores_customizadas.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
Widget build(BuildContext context) {
  final Tamanho = MediaQuery.of(context).size;

  return Scaffold(
    backgroundColor: CoresCustomizadas.appCorCustomizada,
    body: SingleChildScrollView(
      child: SizedBox(
        height: Tamanho.height,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 35),
                      children: [
                        TextSpan(text: 'Bressan', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                        ),
                      ],
                    )
                  ),
                  // Categorias
                  SizedBox(
                    height: 32,
                    child: DefaultTextStyle(
                      style: const TextStyle(fontSize: 22),
                      child: AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText(
                            'Frutas',
                          ),
                          FadeAnimatedText(
                            'Verduras',
                          ),
                          FadeAnimatedText(
                            'Legumes',
                          ),
                          FadeAnimatedText(
                            'Carnes',
                          ),
                          FadeAnimatedText(
                            'Cereais',
                          ),
                          FadeAnimatedText(
                            'Laticíneos',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                    //E-mail
                    const CampoTextCustom(label: 'E-mail', icon: Icons.email,),
                    //Senha
                    const CampoTextCustom(label: 'Senha', icon: Icons.lock, isSecret: true,),
        
                    //Botão entrar
                    SizedBox( 
                     height: 50,
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CoresCustomizadas.appCorCustomizada,
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
                        onPressed: () {}, child: Text('Recuperar sua senha',
                        style: TextStyle(color: CoresCustomizadas.corContrasteCustomizada),
                        ),
                      )
                    ),
        
                    // Dividor
        
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 7),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    // Botão new user
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                          ),
                          side: BorderSide(
                            width: 3,
                            color: CoresCustomizadas.appCorCustomizada
                          )
                        ),
                        onPressed: (){}, 
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
  }
}