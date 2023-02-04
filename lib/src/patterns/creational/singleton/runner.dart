import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerSingleton implements IRunner {
  const RunnerSingleton();

  @override
  String invoke() {
    return 'RunnerSingleton-invoke';
  }
}
