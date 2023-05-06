import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final IconData iconName;
  final String data;

  const CustomCard(this.iconName, this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          iconName,
          color: Colors.blueAccent,
          size: 25.0,
        ),
        title: Text(
          data,
          style: const TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Colors.blueAccent,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
