
import 'package:flutter/material.dart';
import 'container_text.dart';
import 'sum_dices.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                'Soma de Dados',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DicesApp()));
              },
              child: const ContainerText(text: 'Jogar')
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const ContainerText(text: 'Pontuações')
            ),
          ],
        ),
      ),
    );
  }
}
