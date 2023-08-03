
import 'package:flutter/material.dart';
import 'package:kaz_post/homeScreen/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreenContent();
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  final TextEditingController search = TextEditingController();
  List<Color> colors = [
    const Color(0xFFFF7043),
    const Color(0xFF42A5F5),
    const Color(0xFFFFA726),
    const Color(0xFF182B88)
  ];
  List<String> textInGrid = [
    'Мониторинг',
    'Учет и Аудит',
    'Администрирование',
    'Инфо-системы',
  ];
  List<String> iconRoute = [
    'assets/images/eye.png',
    'assets/images/angle.png',
    'assets/images/profPic.png',
    'assets/images/cog.png'
  ];

  @override
  void dispose(){
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.black87,
      drawer: const HomeScreenDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF0D47A1)
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[600]!,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                  padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 25)
                ),
                child: const Text('Пройдите тест до 27 декабря!')),
            const SizedBox(height: 20,),
             const Text('Привет Чингиз!',style: TextStyle(fontSize: 40),),
            const Text('Здесь вы можете найти полезные курсы для себя',
              textAlign: TextAlign.start,style: TextStyle(fontSize: 20),maxLines: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
                child: TextField(
                    controller: search,
                    decoration: InputDecoration(border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                      labelText: 'Название курса',
                    suffixIcon: const Image(image: AssetImage('assets/images/search.png'),
                    width: 15,height: 15,))
                ),
            ),
             const SizedBox(height: 55),
            GridView.builder(padding: EdgeInsets.all(20),
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 35),
              itemCount: colors.length,
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                        color: colors[index],
                      borderRadius: BorderRadius.circular(45)
                    ),
                    child: Column(
                      children: [
                        Align(
                           alignment: Alignment.topRight,
                          child: Image.asset(iconRoute[index],
                            width: 45,
                            height: 45,),
                        ),Align(
                          alignment: Alignment.bottomLeft,
                        child:Text(textInGrid[index],
                          style: const TextStyle(color: Colors.white),
                        )
                        )],
                    ),
                  );
                }
                )
          ],
        ),
      ),
    );
  }
}


