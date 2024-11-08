

import 'package:dio/dio.dart';

class PokemonService {

  static Future<String> getPokenonName(int pokemonId) async {
    final dio = Dio();
    await Future.delayed(Duration(seconds: 2));

    try {
      final response = await dio.get('https://pokeapi.co/api/v2/pokemon/$pokemonId');
      return response.data['name'] ?? 'Name not found';
    }catch (e) {
      throw 'Name not found';
    }
  }

}