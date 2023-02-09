import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerIterator implements IRunner {
  const RunnerIterator();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerIterator-invoke');
  }
}
