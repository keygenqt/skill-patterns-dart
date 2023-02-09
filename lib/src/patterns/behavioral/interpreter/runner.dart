import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerInterpreter implements IRunner {
  const RunnerInterpreter();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerInterpreter-invoke');
  }
}
