import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerProxy implements IRunner {
  const RunnerProxy();

  @override
  String invoke() {
    return 'RunnerProxy-invoke';
  }
}
