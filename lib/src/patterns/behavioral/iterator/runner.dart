import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerIterator implements IRunner {
  const RunnerIterator();

  @override
  String invoke() {
    return 'RunnerIterator-invoke';
  }
}
