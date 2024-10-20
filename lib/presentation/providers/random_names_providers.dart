import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async* {

  await for (final name  in  RandomeGenertor.randomNamesStream()) {

    yield name;
  }
  
});

// final namesStreamProvider = StreamProvider<List<String>>((ref) async* {

//   yield [];
//   await Future.delayed(const Duration(seconds: 2));

//   yield['Alex'];
//   await Future.delayed(const Duration(seconds: 2));
  
//   yield['Alex', 'Alondra'];
//   await Future.delayed(const Duration(seconds: 2));

//   yield['Alex', 'Alondra', 'Alan'];

// });

