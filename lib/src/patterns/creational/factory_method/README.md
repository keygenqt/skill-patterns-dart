Factory Method
===

**Factory Method** is a creational design pattern that provides an interface for creating objects in
a superclass, but allows subclasses to alter the type of objects that will be created.

#### Runner

```dart
class RunnerFactoryMethod implements IRunner {
  const RunnerFactoryMethod();

  @override
  Future<String> invoke() async {
    IDialog dialog;

    if (Random().nextBool()) {
      // if windows == true
      dialog = WindowsDialog();
    } else {
      dialog = WebDialog();
    }

    return Future.value(dialog.render());
  }
}
```

#### Output

```shell
Factory method
------------------  DIALOG  -------------------
|                                             |
|             ------------------              |
|             |     Windows    |              |
|             ------------------              |
|                                             |
-----------------------------------------------
```