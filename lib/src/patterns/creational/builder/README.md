Builder
===

**Builder** is a creational design pattern that lets you construct complex objects step by step. The pattern allows you
to produce different types and representations of an object using the same construction code.

#### Runner

```dart
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
```

#### Output

```shell
Builder
House: {name: House, doors: 1, floors: 1, windows: 5}
Factory: {name: Factory, doors: 5, floors: 4, windows: 20}
```