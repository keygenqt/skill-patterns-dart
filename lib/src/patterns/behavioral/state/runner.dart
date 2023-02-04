import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerState implements IRunner {
  const RunnerState();

  @override
  String invoke() {
    return 'RunnerState-invoke';
  }
}
