mixin IButton {
  String render();
}

class WindowsButton implements IButton {
  @override
  String render() {
    return '''
|             ------------------              |
|             |     Windows    |              |
|             ------------------              |''';
  }
}

class HTMLButton implements IButton {
  @override
  String render() {
    return '''
|             ------------------              |
|             |      HTML      |              |
|             ------------------              |''';
  }
}
