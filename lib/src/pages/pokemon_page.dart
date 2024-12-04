import 'package:flutter/material.dart';
import 'package:my_app/src/features/pokemon/controller/controller_random_pokemon.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Info'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              final pokemon = await fetchRandomPokemon();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Center(child: Text(pokemon['name'])),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(pokemon['sprites']['front_default']),
                      Text('Height: ${pokemon['height']}'),
                      Text('Weight: ${pokemon['weight']}'),
                      SizedBox(height: 16),
                      ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Icon(Icons.favorite),
                        SizedBox(width: 8),
                        Text('Favoritar'),
                        ],
                      ),
                      ),
                    ]),
                  )
                );
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Failed to load Pokemon')),
              );
            }
          },
          child: Text('Sortear Pokémon'),
        ),
      ),
    );
  }
}