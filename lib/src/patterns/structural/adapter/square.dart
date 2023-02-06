import 'package:patterns_dart/src/patterns/structural/adapter/adapter.dart';

class Square implements Adapter {
  Square({
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  String area() {
    return 'Square: ${(height * width).toStringAsFixed(2)}';
  }
}
