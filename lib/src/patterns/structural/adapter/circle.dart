import 'dart:math';

import 'package:patterns_dart/src/patterns/structural/adapter/adapter.dart';

class Circle implements Adapter {
  Circle(this.radius);
  final int radius;

  @override
  String area() {
    return 'Circle: ${(pi * pow(radius, 2)).toStringAsFixed(2)}';
  }
}
