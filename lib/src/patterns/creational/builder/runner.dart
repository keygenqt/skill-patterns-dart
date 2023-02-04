import 'package:patterns_dart/src/patterns/creational/builder/director.dart';
import 'package:patterns_dart/src/patterns/creational/builder/factory.dart';
import 'package:patterns_dart/src/patterns/creational/builder/house.dart';
import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerBuilder implements IRunner {
  const RunnerBuilder();

  @override
  String invoke() {

    final houseBuilder = HouseBuilder();
    final factoryBuilder = FactoryBuilder();

    Director.constructHouse(houseBuilder);
    Director.constructFactory(factoryBuilder);

    final house = houseBuilder.getResult();
    final factory = factoryBuilder.getResult();

    return '''
    House: $house
    Factory: $factory
    ''';
  }
}
