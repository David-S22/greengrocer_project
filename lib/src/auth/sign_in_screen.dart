import 'package:flutter/material.dart';
import 'package:greengrocer_project/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  //E-mail
                  CustomTextField(
                    icon: Icons.email,
                    label: 'E-mail',
                  ),

                  //Senha
                  CustomTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isObscure: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
