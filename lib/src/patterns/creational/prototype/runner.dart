import 'package:patterns_dart/src/patterns/creational/prototype/circle.dart';
import 'package:patterns_dart/src/patterns/creational/prototype/rectangle.dart';
import 'package:patterns_dart/src/patterns/creational/prototype/shape.dart';
import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerPrototype implements IRunner {
  const RunnerPrototype();

  @override
  Future<String> invoke() async {
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

    return Future.value('Shapes: $list');
  }
}
