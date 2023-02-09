import 'package:patterns_dart/src/patterns/creational/factory_method/button.dart';

abstract class IDialog {
  IButton createButton();
  String render() {
    return '''
------------------  DIALOG  -------------------
|                                             |
${createButton().render()}
|                                             |
-----------------------------------------------
    ''';
  }
}

class WindowsDialog extends IDialog {
  @override
  WindowsButton createButton() {
    return WindowsButton();
  }
}

class WebDialog extends IDialog {
  @override
  HTMLButton createButton() {
    return HTMLButton();
  }
}
