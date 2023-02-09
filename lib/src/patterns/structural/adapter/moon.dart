import 'dart:math';

import 'package:patterns_dart/src/patterns/structural/adapter/adapter.dart';

class Moon implements Adapter {
  final double _radius = 1737;

  @override
  String area() {
    return 'Moon: ${(4 * pi * pow(_radius, 2)).toStringAsFixed(2)}';
  }
}
