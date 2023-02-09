import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerCommand implements IRunner {
  const RunnerCommand();

  @override
  String invoke() {
    return 'RunnerCommand-invoke';
  }
}
