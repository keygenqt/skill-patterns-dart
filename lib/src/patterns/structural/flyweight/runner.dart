import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerFlyweight implements IRunner {
  const RunnerFlyweight();

  @override
  String invoke() {
    return 'RunnerFlyweight-invoke';
  }
}
