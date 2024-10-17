

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});

final pokemonProvider = FutureProvider.family<String, int>((ref, id) async {
  final name = PokemonService.getPokenonName(id);
  return name;
});