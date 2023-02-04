import 'package:patterns_dart/src/patterns/creational/prototype/shape.dart';

class Circle extends Shape {

  Circle({
    required this.radius,
    required super.x,
    required super.y,
    required super.color,
  });

  Circle.fromSource(Circle super.source)
      : radius = source.radius,
        super.fromSource();

  final int radius;

  @override
  Shape clone() {
    return Circle.fromSource(this);
  }

  Map<String, dynamic> toJson() => {
    'identityHashCode': identityHashCode(this),
    'radius': radius,
    'x': x,
    'y': y,
    'color': color,
  };

  @override
  String toString() {
    return toJson().toString();
  }
}
