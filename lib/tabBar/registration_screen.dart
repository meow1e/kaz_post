import 'package:flutter/material.dart';

import '../homeScreen/home_screen.dart';

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
              child: Card(
                elevation: 15,
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
            ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: Card(
          elevation: 15,
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
      ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: Card(
          elevation: 15,
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
      ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: Card(
          elevation: 15,
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
      ),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: Card(
          elevation: 15,
          child: TextField(
            obscureText: hidePassword,
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
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
        child: Card(
          elevation: 15,
          child: TextField(
              obscureText: hidePassword,
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
      ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                onPressed: () {setState(() {
                  validate=login.text.isEmpty;
                  validate=password.text.isEmpty;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));});},
                style: ElevatedButton.styleFrom(
                    primary:  Colors.blue[200],
                    onPrimary: Colors.white,
                    elevation: 15,
                    shadowColor: Colors.blue[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 160,vertical: 25)),
                child: const Text('Зарегистрироваться',style: TextStyle(fontSize: 18),),),
            )],
        )
    );
  }
}

