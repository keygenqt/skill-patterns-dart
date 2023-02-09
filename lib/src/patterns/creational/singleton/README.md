Singleton
===

**Singleton** is a creational design pattern that lets you ensure that a class has only one instance, while providing a
global access point to this instance.

#### Runner

```dart
class RunnerSingleton implements IRunner {
  const RunnerSingleton();

  @override
  Future<String> invoke() async {
    return Future.value(Singleton.instance.invokeFun());
  }
}
```

#### Output

```shell
Singleton
Invoke Fun Singleton
```
