import 'package:patterns_dart/src/patterns/creational/builder/director.dart';
import 'package:patterns_dart/src/patterns/creational/builder/factory.dart';
import 'package:patterns_dart/src/patterns/creational/builder/house.dart';
import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerBuilder implements IRunner {
  const RunnerBuilder();

  @override
  Future<String> invoke() async {
    final houseBuilder = HouseBuilder();
    final factoryBuilder = FactoryBuilder();

    Director.constructHouse(houseBuilder);
    Director.constructFactory(factoryBuilder);

    final house = houseBuilder.getResult();
    final factory = factoryBuilder.getResult();

    return Future.value('''
House: $house
Factory: $factory
    ''');
  }
}
