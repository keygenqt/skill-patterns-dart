import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerBridge implements IRunner {
  const RunnerBridge();

  @override
  String invoke() {
    return 'RunnerBridge-invoke';
  }
}
