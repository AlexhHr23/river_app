import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/pokemon_provider.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final pokemonAsync  = ref.watch(pokemonProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Provider'),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: (value) => Text(value), 
          error: (error, stackTrace) => Text('Error: $error'), 
          loading: () => const CircularProgressIndicator()
        )
      ),
    );
  }
}