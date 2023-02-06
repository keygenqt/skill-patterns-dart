import 'package:patterns_dart/src/patterns/structural/composite/graphics.dart';

class CompoundGraphic implements Graphic {
  final _children = <Graphic>[];

  @override
  String draw() {
    final buffer = StringBuffer();
    for (final element in _children) {
      buffer.write(element.draw());
    }
    return buffer.toString();
  }

  @override
  void paddingLeft(int padding) {
    for (final element in _children) {
      element.paddingLeft(padding);
    }
  }

  void add(Graphic child) {
    _children.add(child);
  }

  void remove(Graphic child) {
    _children.remove(child);
  }
}
