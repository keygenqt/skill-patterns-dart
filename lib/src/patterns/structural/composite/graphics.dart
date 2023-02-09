mixin Graphic {
  void paddingLeft(int padding);

  String draw();
}

class Circle implements Graphic {
  var _padding = 0;

  @override
  String draw() {
    return '''
${' ' * _padding}      *  *  *        
${' ' * _padding}   *  *  *  *  *     
${' ' * _padding}*  *  *  *  *  *  *  
${' ' * _padding}*  *  *  *  *  *  *  
${' ' * _padding}*  *  *  *  *  *  *  
${' ' * _padding}   *  *  *  *  *     
${' ' * _padding}      *  *  *  
''';
  }

  @override
  void paddingLeft(int padding) {
    _padding = padding;
  }
}

class Rectangle implements Graphic {
  var _padding = 0;

  @override
  String draw() {
    return '''
${' ' * _padding}*  *  *  *  *  *  *
${' ' * _padding}*  *  *  *  *  *  *
${' ' * _padding}*  *  *  *  *  *  *
${' ' * _padding}*  *  *  *  *  *  *
${' ' * _padding}*  *  *  *  *  *  *
${' ' * _padding}*  *  *  *  *  *  *
${' ' * _padding}*  *  *  *  *  *  *
''';
  }

  @override
  void paddingLeft(int padding) {
    _padding = padding;
  }
}