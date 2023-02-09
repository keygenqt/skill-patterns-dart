import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerState implements IRunner {
  const RunnerState();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerState-invoke');
  }
}
