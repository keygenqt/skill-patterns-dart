import 'package:patterns_dart/src/patterns/creational/prototype/shape.dart';

class Rectangle extends Shape {
  Rectangle({
    required this.width,
    required this.height,
    required super.x,
    required super.y,
    required super.color,
  });

  Rectangle.fromSource(Rectangle super.source)
      : width = source.width,
        height = source.height,
        super.fromSource();

  final int width;
  final int height;

  @override
  Shape clone() {
    return Rectangle.fromSource(this);
  }

  Map<String, dynamic> toJson() => {
    'identityHashCode': identityHashCode(this),
    'width': width,
    'height': height,
    'x': x,
    'y': y,
    'color': color,
  };

  @override
  String toString() {
    return toJson().toString();
  }
}
