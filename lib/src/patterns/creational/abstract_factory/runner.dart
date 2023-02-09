import 'dart:math';

import 'package:patterns_dart/src/patterns/creational/abstract_factory/factories.dart';
import 'package:patterns_dart/src/patterns/runner.dart';

class Application {
  Application(this.factory);

  final IFactory factory;

  String render() {
    return '''
----------------  Application  ----------------
|                                             |
${factory.createInput().render()}
${factory.createInput().render()}
|                                             |
|                                             |
${factory.createButton().render()}
|                                             |
-----------------------------------------------
    ''';
  }
}

class RunnerAbstractFactory implements IRunner {
  const RunnerAbstractFactory();

  @override
  Future<String> invoke() async {
    IFactory factory;

    if (Random().nextBool()) {
      // if windows == true
      factory = WinFactory();
    } else {
      factory = WebFactory();
    }

    return Future.value(Application(factory).render());
  }
}
