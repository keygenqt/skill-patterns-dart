mixin IButton {
  String render();
}

class WindowsButton implements IButton {
  @override
  String render() {
    return '''
|             ------------------              |
|             |   Btn Windows  |              |
|             ------------------              |''';
  }
}

class HTMLButton implements IButton {
  @override
  String render() {
    return '''
|             ------------------              |
|             |    Btn HTML    |              |
|             ------------------              |''';
  }
}
