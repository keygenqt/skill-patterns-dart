import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/composite/compound.dart';
import 'package:patterns_dart/src/patterns/structural/composite/graphics.dart';

class RunnerComposite implements IRunner {
  const RunnerComposite();

  @override
  Future<String> invoke() async {
    final graphics = CompoundGraphic()
      ..add(Circle())
      ..add(Rectangle())
      ..add(Circle())
      ..paddingLeft(3);

    return Future.value(graphics.draw());
  }
}
