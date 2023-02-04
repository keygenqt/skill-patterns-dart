import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerBuilder implements IRunner {
  const RunnerBuilder();

  @override
  String invoke() {
    return 'RunnerBuilder-invoke';
  }
}
