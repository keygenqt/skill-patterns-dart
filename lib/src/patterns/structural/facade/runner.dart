import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/facade/facade.dart';

class RunnerFacade implements IRunner {
  const RunnerFacade();

  @override
  String invoke() {
    final convertor = VideoConverter();
    return convertor.convert('filename.3gp', VideoFormat.mp4);
  }
}
