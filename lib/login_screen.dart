import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const LoginTextField();
  }
}


class LoginTextField extends StatefulWidget {
  const LoginTextField({super.key});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  final TextEditingController login = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool validate = false;
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Column(
          children: [
             SizedBox(width: 280,
             height: 100,
            child:TextField(
                controller: login,
                decoration: const InputDecoration(
                  hintText: 'Введите логин',
                  labelText: 'Введите логин',)
            ),),
            SizedBox(height: 100,
              width: 280,
              child: TextField(
          controller: password,
          decoration: const InputDecoration(
              hintText: 'Введите пароль',
              labelText: 'Введите пароль',)
        ),
            )],
        )
    );
  }
}

