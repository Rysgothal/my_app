import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

Future<Map<String, dynamic>> fetchRandomPokemon() async {
  final randomId = (1 + (1000 * (DateTime.now().millisecondsSinceEpoch % 1000) / 1000)).toInt();
  final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$randomId'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Inconsistência ao carregar Pokemon');
  }
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Obter Pokemon Aleatório')),
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
          child: Text('Get Random Pokemon'),
        ),
      ),
    );
  }
}