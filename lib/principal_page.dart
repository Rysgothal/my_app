import 'package:flutter/material.dart';
import 'package:my_app/components/navbar_itens.dart';
import 'package:my_app/navbar_pages/pokemon_page.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
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