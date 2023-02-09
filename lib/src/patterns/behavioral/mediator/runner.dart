import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerMediator implements IRunner {
  const RunnerMediator();

  @override
  String invoke() {
    return 'RunnerMediator-invoke';
  }
}
