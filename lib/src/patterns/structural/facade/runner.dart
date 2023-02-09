import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/facade/facade.dart';

class RunnerFacade implements IRunner {
  const RunnerFacade();

  @override
  Future<String> invoke() async {
    final convertor = VideoConverter();
    return Future.value(convertor.convert('filename.3gp', VideoFormat.mp4));
  }
}
