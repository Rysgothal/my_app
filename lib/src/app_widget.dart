import 'package:flutter/material.dart';
import 'package:my_app/src/pages/pokemon_page.dart';
import 'package:my_app/src/widgets/navbar_itens.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  int _currentPage = 1;

  static const List<Widget> _pages = <Widget>[
    PokemonPage(),
    Center(child: Text('Home')),
    Center(child: Text('Historico')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: buildBottomNavigationBarItems(),
      ),
    );
  }
}