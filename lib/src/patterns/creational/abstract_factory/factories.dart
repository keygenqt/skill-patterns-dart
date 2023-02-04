import 'package:patterns_dart/src/patterns/creational/abstract_factory/button.dart';
import 'package:patterns_dart/src/patterns/creational/abstract_factory/input.dart';

mixin IFactory {
  IButton createButton();
  IInput createInput();
}

class WinFactory implements IFactory {
  @override
  IButton createButton() {
    return WindowsButton();
  }

  @override
  IInput createInput() {
    return WindowsInput();
  }
}

class WebFactory implements IFactory {
  @override
  IButton createButton() {
    return HTMLButton();
  }

  @override
  IInput createInput() {
    return HTMLInput();
  }
}
