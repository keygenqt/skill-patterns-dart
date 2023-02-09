mixin IInput {
  String render();
}

class WindowsInput implements IInput {
  @override
  String render() {
    return '''
|             ------------------              |
|             |  Input Windows |              |
|             ------------------              |''';
  }
}

class HTMLInput implements IInput {
  @override
  String render() {
    return '''
|             ------------------              |
|             |   Input HTML   |              |
|             ------------------              |''';
  }
}
