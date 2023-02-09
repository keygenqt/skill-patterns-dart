import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/adapter/adapter.dart';
import 'package:patterns_dart/src/patterns/structural/adapter/circle.dart';
import 'package:patterns_dart/src/patterns/structural/adapter/moon.dart';
import 'package:patterns_dart/src/patterns/structural/adapter/square.dart';

class RunnerAdapter implements IRunner {
  const RunnerAdapter();

  @override
  String invoke() {
    final moon = Moon();
    final circle = Circle(12);
    final square = Square(width: 20, height: 20);

    final adapter = <Adapter>[moon, circle, square];

    return 'Area: ${adapter.map((e) => e.area())}';
  }
}
