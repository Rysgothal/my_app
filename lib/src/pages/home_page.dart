import 'package:flutter/material.dart';
import 'package:my_app/src/features/home/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                CardGeneric(nameCard: 'Pokemon', iconCard: Icons.catching_pokemon, route: '/pokemon'),
                CardGeneric(nameCard: 'teste',  iconCard: Icons.ac_unit_sharp, route: '/'),
              ],
            )
          ],
        ),
      ),
    );
  }
}