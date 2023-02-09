import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerMemento implements IRunner {
  const RunnerMemento();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerMemento-invoke');
  }
}
