import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerFacade implements IRunner {
  const RunnerFacade();

  @override
  String invoke() {
    return 'RunnerFacade-invoke';
  }
}
