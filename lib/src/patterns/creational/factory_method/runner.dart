import 'dart:math';

import 'package:patterns_dart/src/patterns/creational/factory_method/dialog.dart';
import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerFactoryMethod implements IRunner {
  const RunnerFactoryMethod();

  @override
  String invoke() {

    IDialog dialog;

    if (Random().nextBool()) { // if windows == true
      dialog = WindowsDialog();
    } else {
      dialog = WebDialog();
    }

    return dialog.render();
  }
}
