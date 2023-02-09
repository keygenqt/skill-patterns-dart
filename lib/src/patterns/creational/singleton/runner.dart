import 'package:patterns_dart/src/patterns/creational/singleton/singleton.dart';
import 'package:patterns_dart/src/patterns/runner.dart';

class RunnerSingleton implements IRunner {
  const RunnerSingleton();

  @override
  Future<String> invoke() async {
    return Future.value(Singleton.instance.invokeFun());
  }
}
