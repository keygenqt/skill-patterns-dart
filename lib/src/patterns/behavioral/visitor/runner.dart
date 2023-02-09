import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerVisitor implements IRunner {
  const RunnerVisitor();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerVisitor-invoke');
  }
}
