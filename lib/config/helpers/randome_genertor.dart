

import 'package:random_name_generator/random_name_generator.dart';

class RandomeGenertor {
  static String getRandomName() {
    final randomName = RandomNames(Zone.spain);
    return randomName.fullName();
  }

  static Stream<String> randomNamesStream() {
    return Stream.periodic(
      const Duration(seconds: 2),
      (i) {
        print('Stream new value');
        return getRandomName();
      }
    );
  }

}