import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerObserver implements IRunner {
  const RunnerObserver();

  @override
  String invoke() {
    return 'RunnerObserver-invoke';
  }
}
