import 'package:flutter/material.dart';

import '../homeScreen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 10),
              child: Card(
                elevation: 15,
                child: TextField(
                    controller: login,
                    decoration: InputDecoration(border:
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                      hintText: 'Логин',
                      labelText: 'Логин',)
                ),
              ),
      ),
            const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 10),
                child: Card(
                  elevation: 15,
                  child: TextField(
                    obscureText: hidePassword,
          controller: password,
          decoration: InputDecoration(border:
          OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
                  hintText: 'Пароль',
                  labelText: 'Пароль',
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
            Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:Material(child:
                    Column(
                  children: [
                    ElevatedButton(
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
                        padding: const EdgeInsets.symmetric(horizontal: 160,vertical: 25)
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
                    ),Padding(padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 25), child:
                ElevatedButton.icon(
                  icon: const Image(image: AssetImage
                    ('assets/images/idImage.png'),width: 60,height: 40,),
                  onPressed: () {
                    setState(() {
                    validate=login.text.isEmpty;
                    validate=password.text.isEmpty;});},
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.blue[900]!),
                      backgroundColor: Colors.white,
                      onPrimary: Colors.blue[900],
                      elevation: 15,
                      shadowColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20)
                  ),
                  label: const Text('Войти с помощью Digital ID',style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left ,),
        )
                    )])
            )
        )
    ]));
  }
}

