import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerMediator implements IRunner {
  const RunnerMediator();

  @override
  Future<String> invoke() async {
    return Future.value('RunnerMediator-invoke');
  }
}
