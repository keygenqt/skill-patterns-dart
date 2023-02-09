import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/bridge/device.dart';
import 'package:patterns_dart/src/patterns/structural/bridge/remote.dart';

class RunnerBridge implements IRunner {
  const RunnerBridge();

  @override
  String invoke() {

    final tv = Tv();
    final tvRemote = Remote(tv);

    final radio = Radio();
    final radioRemote = Remote(radio);

    tvRemote.togglePower();
    radioRemote.togglePower();

    return '''
Tv is work: ${tv.isTurnOn()}
Radio is work: ${radio.isTurnOn()}
    ''';
  }
}
