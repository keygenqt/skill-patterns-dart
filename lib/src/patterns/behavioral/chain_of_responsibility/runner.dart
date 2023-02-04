import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerCOfR implements IRunner {
  const RunnerCOfR();

  @override
  String invoke() {
    return 'RunnerChainOfResponsibility-invoke';
  }
}
