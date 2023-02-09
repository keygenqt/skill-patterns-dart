Abstract Factory
===

**Abstract Factory** is a creational design pattern that lets you produce families of related
objects without specifying their concrete classes.

#### Runner

```dart
class Application {

  Application(this.factory);

  final IFactory factory;

  String render() {
    return '''
----------------  Application  ----------------
|                                             |
${factory.createInput().render()}
${factory.createInput().render()}
|                                             |
|                                             |
${factory.createButton().render()}
|                                             |
-----------------------------------------------
    ''';
  }
}

class RunnerAbstractFactory implements IRunner {
  const RunnerAbstractFactory();

  @override
  String invoke() {
    IFactory factory;

    if (Random().nextBool()) { // if windows == true
      factory = WinFactory();
    } else {
      factory = WebFactory();
    }

    return Application(factory).render();
  }
}
```

#### Output

```shell
Abstract factory
----------------  Application  ----------------
|                                             |
|             ------------------              |
|             |   Input HTML   |              |
|             ------------------              |
|             ------------------              |
|             |   Input HTML   |              |
|             ------------------              |
|                                             |
|                                             |
|             ------------------              |
|             |    Btn HTML    |              |
|             ------------------              |
|                                             |
-----------------------------------------------
```