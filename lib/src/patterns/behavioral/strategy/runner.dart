import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerStrategy implements IRunner {
  const RunnerStrategy();

  @override
  String invoke() {
    return 'RunnerStrategy-invoke';
  }
}
