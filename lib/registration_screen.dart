import 'package:flutter/material.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const RegTextField();
  }
}


class RegTextField extends StatefulWidget {
  const RegTextField({super.key});

  @override
  State<RegTextField> createState() => _RegTextFieldState();
}

class _RegTextFieldState extends State<RegTextField> {
  final TextEditingController login = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool validate = false;
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Column(
          children: [
            TextField(
                controller: login,
                decoration: const InputDecoration(
                  hintText: 'Введите логин',
                  labelText: 'Введите логин',)
            ),
            TextField(
                controller: password,
                decoration: const InputDecoration(
                  hintText: 'Введите пароль',
                  labelText: 'Введите пароль',)
            )],
        )
    );
  }
}

