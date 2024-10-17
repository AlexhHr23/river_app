

import 'package:random_name_generator/random_name_generator.dart';

class RandomeGenertor {
  static String getRandomName() {
    final randomName = RandomNames(Zone.spain);
    return randomName.fullName();
  }
}