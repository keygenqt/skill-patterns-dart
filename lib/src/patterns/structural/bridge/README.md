Bridge
===

**Bridge** is a structural design pattern that lets you split a large class or a set of closely
related classes into two separate hierarchies-abstraction and implementation-which can be developed
independently of each other.

#### Runner

```dart
class RunnerBridge implements IRunner {
  const RunnerBridge();

  @override
  Future<String> invoke() async {
    final tv = Tv();
    final tvRemote = Remote(tv);

    final radio = Radio();
    final radioRemote = Remote(radio);

    tvRemote.togglePower();
    radioRemote.togglePower();

    return Future.value('''
Tv is work: ${tv.isTurnOn()}
Radio is work: ${radio.isTurnOn()}
    ''');
  }
}
```

#### Output

```shell
Bridge
Tv is work: true
Radio is work: true
```