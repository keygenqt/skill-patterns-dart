Factory Method
===

**Factory Method** is a creational design pattern that provides an interface for creating objects in
a superclass, but allows subclasses to alter the type of objects that will be created.

#### Runner

```dart
class RunnerFactoryMethod implements IRunner {
  const RunnerFactoryMethod();

  @override
  String invoke() {

    IDialog dialog;

    if (Random().nextBool()) { // if windows == true
      dialog = WindowsDialog();
    } else {
      dialog = WebDialog();
    }

    return dialog.render();
  }
}
```

#### Output

```shell
Factory method
--------------------DIALOG---------------------
|                                             |
|             ------------------              |
|             |     Windows    |              |
|             ------------------              |
|                                             |
-----------------------------------------------
```