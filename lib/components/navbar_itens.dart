import 'package:flutter/material.dart';

List<BottomNavigationBarItem> buildBottomNavigationBarItems() {
  return const [
    BottomNavigationBarItem(
      icon: Icon(Icons.catching_pokemon_outlined), 
      activeIcon: Icon(Icons.catching_pokemon), 
      label: 'Pokemon'
    ),
    
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined), 
      activeIcon: Icon(Icons.home_sharp),
      label: 'Home'),

    BottomNavigationBarItem(
      icon: Icon(Icons.person_2_outlined),
      activeIcon: Icon(Icons.person_2),
      label: 'Histótico'),
  ];
}

