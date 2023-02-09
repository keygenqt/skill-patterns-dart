import 'package:patterns_dart/src/patterns/creational/builder/builder.dart';

class Director {
  static void constructHouse(Builder builder) {
    builder
      .reset()
      .setName('House')
      .setNumberFloors(1)
      .setNumberDoors(1)
      .setNumberWindows(5);
  }

  static void constructFactory(Builder builder) {
    builder
      .reset()
      .setName('Factory')
      .setNumberFloors(4)
      .setNumberDoors(5)
      .setNumberWindows(20);
  }
}
