import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerInterpreter implements IRunner {
  const RunnerInterpreter();

  @override
  String invoke() {
    return 'RunnerInterpreter-invoke';
  }
}
