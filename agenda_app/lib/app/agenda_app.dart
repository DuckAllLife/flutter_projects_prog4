import 'package:flutter/material.dart';

import '../pages/contact_page.dart';
import '../pages/main_page.dart';
import 'app_routes.dart';

class AgendaApp extends StatelessWidget {
  const AgendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agenda',
      theme: ThemeData(colorSchemeSeed: Colors.pink),
      initialRoute: AppRoute.mainPage.name,
      routes: {
        AppRoute.mainPage.name: (_) => const MainPage(),
        AppRoute.contactPage.name: (_) => const ContactPage(),
      },
    );
  }
}
