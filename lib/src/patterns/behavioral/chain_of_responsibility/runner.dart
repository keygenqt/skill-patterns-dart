import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerCOfR implements IRunner {
  const RunnerCOfR();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerChainOfResponsibility-invoke');
  }
}
