import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerComposite implements IRunner {
  const RunnerComposite();

  @override
  String invoke() {
    return 'RunnerComposite-invoke';
  }
}
