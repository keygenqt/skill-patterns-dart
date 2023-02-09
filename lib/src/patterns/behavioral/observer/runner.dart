import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerObserver implements IRunner {
  const RunnerObserver();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerObserver-invoke');
  }
}
