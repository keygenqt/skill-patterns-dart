import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerCommand implements IRunner {
  const RunnerCommand();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerCommand-invoke');
  }
}
