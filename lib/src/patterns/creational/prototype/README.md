Prototype
===

**Prototype** is a creational design pattern that lets you copy existing objects without making your
code dependent on their classes.

#### Runner

```dart
class RunnerPrototype implements IRunner {
  const RunnerPrototype();

  @override
  String invoke() {
    final list = <Shape>[];

    final circle = Circle(
      radius: 50,
      x: 10,
      y: 10,
      color: 'red',
    );

    list
      ..add(circle)
      ..add(circle)
      ..add(circle.clone());

    final rectangle = Rectangle(
      width: 150,
      height: 150,
      x: 15,
      y: 15,
      color: 'yellow',
    );

    list
      ..add(rectangle)
      ..add(rectangle)
      ..add(rectangle.clone());

    return 'Shapes: $list';
  }
}
```

#### Output

```shell
Shapes: [
    {identityHashCode: 384874063, radius: 50, x: 10, y: 10, color: red}, 
    {identityHashCode: 384874063, radius: 50, x: 10, y: 10, color: red}, 
    {identityHashCode: 289516251, radius: 50, x: 10, y: 10, color: red}, 
    {identityHashCode: 561369523, width: 150, height: 150, x: 15, y: 15, color: yellow}, 
    {identityHashCode: 561369523, width: 150, height: 150, x: 15, y: 15, color: yellow}, 
    {identityHashCode: 29716206, width: 150, height: 150, x: 15, y: 15, color: yellow}
]
```