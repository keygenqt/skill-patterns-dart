import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerAbstractFactory implements IRunner {
  const RunnerAbstractFactory();

  @override
  String invoke() {
    return 'RunnerAbstractFactory-invoke';
  }
}
