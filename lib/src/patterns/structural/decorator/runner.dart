import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerDecorator implements IRunner {
  const RunnerDecorator();

  @override
  String invoke() {
    return 'RunnerDecorator-invoke';
  }
}
