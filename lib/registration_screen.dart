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
  final TextEditingController repeatPassword = TextEditingController();
  final TextEditingController surName = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController fathersName = TextEditingController();
  bool validate = false;
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
              child: TextField(
                  controller: login,
                  decoration: InputDecoration(border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                    hintText: 'Введите логин',
                    labelText: 'Введите логин',)
              ),
            ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: TextField(
            controller: name,
            decoration: InputDecoration(border:
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
              hintText: 'Введите имя',
              labelText: 'Введите имя',)
        ),
      ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: TextField(
            controller: surName,
            decoration: InputDecoration(border:
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
              hintText: 'Введите фамилию',
              labelText: 'Введите фамилию',)
        ),
      ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: TextField(
            controller: fathersName,
            decoration: InputDecoration(border:
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
              hintText: 'Введите отчество',
              labelText: 'Введите отчество',)
        ),
      ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: TextField(
            controller: password,
            decoration: InputDecoration(border:
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
                hintText: 'Введите пароль',
                labelText: 'Введите пароль',
                suffixIcon: IconButton(
                  icon: hidePassword
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      hidePassword=!hidePassword;
                    });
                  },
                ))
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: TextField(
            controller: repeatPassword,
            decoration: InputDecoration(border:
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
                hintText: 'Повторите пароль',
                labelText: 'Повторите пароль',
                suffixIcon: IconButton(
                  icon: hidePassword
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      hidePassword=!hidePassword;
                    });
                  },
                ))
        ),
      ),
            ],
        )
    );
  }
}

