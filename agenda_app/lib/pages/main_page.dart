import 'package:agenda_app/app/app_routes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contatos'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Icon(
              Icons.more_vert,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoute.contactPage.name);
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
