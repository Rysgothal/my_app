import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchRandomPokemon() async {
  final randomId = (1 + (1000 * (DateTime.now().millisecondsSinceEpoch % 1000) / 1000)).toInt();
  final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$randomId'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Inconsistência ao carregar Pokemon');
  }
}
