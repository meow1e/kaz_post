import 'package:flutter/material.dart';

class HomeScreenDrawer extends StatefulWidget {
  const HomeScreenDrawer({super.key});

  @override
  State<HomeScreenDrawer> createState() => _HomeScreenDrawerState();
}

class _HomeScreenDrawerState extends State<HomeScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Чингиз Мирапбек'),
                accountEmail: Text('mirapbekoff@mail.ru'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profPic.png'),),
            ),
            DrawerTextButton(text: Text('Мои данные',textAlign: TextAlign.left),),
            Divider(),
            DrawerTextButton(text: Text('Мои курсы',textAlign: TextAlign.left),),
            Divider(),
            DrawerTextButton(text: Text('Мои тесты',textAlign: TextAlign.left),),
            Divider(),
            DrawerTextButton(text: Text('Поддержка',textAlign: TextAlign.left),),
            Divider(),
            DrawerTextButton(text: Text('Выйти с аккаунта',textAlign: TextAlign.left,
            style: TextStyle(color: Colors.red),))
          ],
        ),
      ),
    );
  }
}

class DrawerTextButton extends StatelessWidget {
  final Text? text;
  const DrawerTextButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 10)
        ),
        child:text ?? const Text("bruh") );
  }
}
