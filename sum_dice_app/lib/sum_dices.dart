
import 'dart:math';
import 'package:flutter/material.dart';

import 'container_text.dart';

class DicesApp extends StatefulWidget {
  const DicesApp({super.key});

  @override
  State<DicesApp> createState() => _MyDicesState();
}

class _MyDicesState extends State<DicesApp> {
  int leftDice = Random().nextInt(5) + 1;
  int rightDice = Random().nextInt(5) + 1;
  int resultado = (Random().nextInt(10) + 2);
  int pontuacao = 0;

  newOperation() {
    if ((leftDice + rightDice) == resultado) {
      setState(() {
        leftDice = Random().nextInt(6) + 1;
        rightDice = Random().nextInt(6) + 1;
        resultado = (Random().nextInt(11) + 2);
        pontuacao += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DicesApp',
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.teal,
            ),
          ),
          title: const Text('Soma de Dados'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  'Realize a Operação',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                resultado.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (leftDice != 6) {
                              leftDice += 1;
                            } else {
                              leftDice = 1;
                            }
                          });
                        },
                        child: Image.asset('assets/images/dado$leftDice.png'),
                      )),
                  Expanded(
                      flex: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (rightDice != 6) {
                              rightDice += 1;
                            } else {
                              rightDice = 1;
                            }
                          });
                        },
                        child: Image.asset('assets/images/dado$rightDice.png'),
                      )),
                ],
              ),
              TextButton(
                onPressed: () {
                  newOperation();
                },
                child: const ContainerText(text: 'Enviar Resultado'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
