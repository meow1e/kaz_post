import 'package:flutter/material.dart';
import 'package:kaz_post/registration_screen.dart';

import 'login_screen.dart';
class AuthScreen extends StatelessWidget {
  const AuthScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,centerTitle: true,
          title: const Image(width:140, height:160,
              image: AssetImage('assets/images/logo.png')),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('Вход',style: TextStyle(color: Colors.black))),
              Tab(child: Text('Регистрация',style: TextStyle(color: Colors.black)))
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LoginScreen(),
            RegScreen()
          ],
        ),)
  );
}
}
