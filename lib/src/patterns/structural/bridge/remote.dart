import 'package:patterns_dart/src/patterns/structural/bridge/device.dart';

class Remote {
  Remote(this.device);

  final Device device;

  void togglePower() {
    if (device.isTurnOn()) {
      device.turnOff();
    } else {
      device.turnOn();
    }
  }
}
