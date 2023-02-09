import 'package:patterns_dart/src/patterns/creational/builder/builder.dart';

class HouseBuilder implements Builder {
  House _house = House();

  @override
  Builder reset() {
    _house = House();
    return this;
  }

  @override
  Builder setName(String name) {
    _house.name = name;
    return this;
  }

  @override
  Builder setNumberDoors(int number) {
    _house.doors = number;
    return this;
  }

  @override
  Builder setNumberFloors(int number) {
    _house.floors = number;
    return this;
  }

  @override
  Builder setNumberWindows(int number) {
    _house.windows = number;
    return this;
  }

  House getResult() {
    return _house;
  }
}

class House {
  late final String name;
  late final int doors;
  late final int floors;
  late final int windows;

  Map<String, dynamic> toJson() => {
    'name': name,
    'doors': doors,
    'floors': floors,
    'windows': windows,
  };

  @override
  String toString() {
    return toJson().toString();
  }
}
