abstract class Shape {

  Shape({
    required this.x,
    required this.y,
    required this.color,
  });

  Shape.fromSource(Shape source) :
    x = source.x,
    y = source.y,
    color = source.color;

  final int x;
  final int y;
  final String color;

  Shape clone();
}
