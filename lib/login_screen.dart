import 'package:flutter/material.dart';

import 'home_screen.dart';

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
  void dispose() {
    login.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Column(
          children: [
             const SizedBox(height: 10 ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 10),
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
            const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 10),
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
            Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:Material(child:
                    Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {setState(() {validate=login.text.isEmpty;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));});},
                      style: ElevatedButton.styleFrom(
                        primary:  Colors.blue[200],
                        onPrimary: Colors.white,
                        elevation: 15,
                        shadowColor: Colors.blue[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(horizontal: 160,vertical: 30)
                      ),
                      child: const Text('Войти',style: TextStyle(fontSize: 18),),
                    ),Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 57.0),
                      child: Align(alignment: Alignment.bottomLeft,
                        child:
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue[800]!),
                      ),
                      child: const Text('Забыли пароль'),
                  ),
              ),
                    ),Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 38), child:
                ElevatedButton(
                  onPressed: () {setState(() {validate=login.text.isEmpty;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));});},
                  style: ElevatedButton.styleFrom(
                      primary:  Colors.blue[200],
                      onPrimary: Colors.white,
                      elevation: 15,
                      shadowColor: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.symmetric(horizontal: 160,vertical: 30)
                  ),
                  child: const Text('Войти',style: TextStyle(fontSize: 18),),
        )
                    )])
            )
        )
    ]));
  }
}

