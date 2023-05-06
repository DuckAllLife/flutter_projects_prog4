import 'package:flutter/material.dart';
import 'package:my_card/custom_card.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/image_profile.png'),
            ),
            Text(
              'Gabriel Benigno',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
            Text(
              'DESENVOLVEDOR FLUTTER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              width: 300,
              child: Divider(
                color: Colors.white,
              ),
            ),
            CustomCard(Icons.phone, '+55 86 98165--5696'),
            CustomCard(Icons.email, 'gbenignor@aluno.uespi.br'),
          ],
        ),
      ),
    );
  }
}
