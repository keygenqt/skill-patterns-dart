import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerPrototype implements IRunner {
  const RunnerPrototype();

  @override
  String invoke() {
    return 'RunnerPrototype-invoke';
  }
}
