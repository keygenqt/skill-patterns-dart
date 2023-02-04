import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerAdapter implements IRunner {
  const RunnerAdapter();

  @override
  String invoke() {
    return 'RunnerAdapter-invoke';
  }
}
