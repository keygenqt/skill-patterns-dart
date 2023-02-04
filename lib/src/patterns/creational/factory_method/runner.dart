import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerFactoryMethod implements IRunner {
  const RunnerFactoryMethod();

  @override
  String invoke() {
    return 'RunnerFactoryMethod-invoke';
  }
}
