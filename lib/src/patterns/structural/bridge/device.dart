mixin Device {
  bool isTurnOn();

  void turnOn();

  void turnOff();
}

class Tv implements Device {
  bool _isWork = false;

  @override
  bool isTurnOn() {
    return _isWork;
  }

  @override
  void turnOff() {
    _isWork = false;
  }

  @override
  void turnOn() {
    _isWork = true;
  }
}

class Radio implements Device {
  bool _isWork = false;

  @override
  bool isTurnOn() {
    return _isWork;
  }

  @override
  void turnOff() {
    _isWork = false;
  }

  @override
  void turnOn() {
    _isWork = true;
  }
}
