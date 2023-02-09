import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerVisitor implements IRunner {
  const RunnerVisitor();

  @override
  String invoke() {
    return 'RunnerVisitor-invoke';
  }
}
