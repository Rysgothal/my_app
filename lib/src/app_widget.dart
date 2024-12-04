import 'package:flutter/material.dart';
import 'package:my_app/src/pages/home_page.dart';
import 'package:my_app/src/pages/pokemon_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage() ,
        '/pokemon': (context) => const PokemonPage(),
      },

      
    );
  }
}