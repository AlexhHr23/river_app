

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final pokemonProvider = FutureProvider<String>((ref) async {
  final name = PokemonService.getPokenonName(1);
  return name;
});