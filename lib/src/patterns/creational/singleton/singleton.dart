class Singleton {
  Singleton._();

  static Singleton? _instance;

  static Singleton get instance => _instance ??= Singleton._();

  String invokeFun() {
    return 'Invoke Fun Singleton';
  }
}
