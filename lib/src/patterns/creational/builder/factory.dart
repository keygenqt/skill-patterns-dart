import 'package:patterns_dart/src/patterns/creational/builder/builder.dart';

class FactoryBuilder implements Builder {
  Factory _factory = Factory();

  @override
  Builder reset() {
    _factory = Factory();
    return this;
  }

  @override
  Builder setName(String name) {
    _factory.name = name;
    return this;
  }

  @override
  Builder setNumberDoors(int number) {
    _factory.doors = number;
    return this;
  }

  @override
  Builder setNumberFloors(int number) {
    _factory.floors = number;
    return this;
  }

  @override
  Builder setNumberWindows(int number) {
    _factory.windows = number;
    return this;
  }

  Factory getResult() {
    return _factory;
  }
}

class Factory {
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
