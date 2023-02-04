import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerTemplateMethod implements IRunner {
  const RunnerTemplateMethod();

  @override
  String invoke() {
    return 'RunnerTemplateMethod-invoke';
  }
}
