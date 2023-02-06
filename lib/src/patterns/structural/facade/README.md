Facade
===

**Facade** is a structural design pattern that provides a simplified interface to a library, a
framework, or any other complex set of classes.

#### Runner

```dart
class RunnerFacade implements IRunner {
  const RunnerFacade();

  @override
  String invoke() {
    final convertor = VideoConverter();
    return convertor.convert('filename.3gp', VideoFormat.mp4);
  }
}
```

#### Output

```shell
Facade
filename.3gp compress to filename.mp4
```