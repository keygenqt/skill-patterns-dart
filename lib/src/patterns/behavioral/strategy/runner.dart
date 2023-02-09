import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerStrategy implements IRunner {
  const RunnerStrategy();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerStrategy-invoke');
  }
}
