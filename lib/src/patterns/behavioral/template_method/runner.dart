import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerTemplateMethod implements IRunner {
  const RunnerTemplateMethod();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerTemplateMethod-invoke');
  }
}
