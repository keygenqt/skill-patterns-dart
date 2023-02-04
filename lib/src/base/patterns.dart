enum Patterns {
  abstractFactory('Abstract factory'),
  adapter('Adapter'),
  bridge('Bridge'),
  builder('Builder'),
  chainOfResponsibility('Chain of responsibility'),
  command('Command'),
  composite('Composite'),
  decorator('Decorator'),
  facade('Facade'),
  factoryMethod('Factory method'),
  flyweight('Flyweight'),
  interpreter('Interpreter'),
  iterator('Iterator'),
  mediator('Mediator'),
  memento('Memento'),
  observer('Observer'),
  prototype('Prototype'),
  proxy('Proxy'),
  singleton('Singleton'),
  state('State'),
  strategy('Strategy'),
  templateMethod('Template method'),
  visitor('Visitor'),
  unknown('Unknown');

  const Patterns(this.label);

  final String label;

  static Patterns fromString(String label) {
    return values.firstWhere(
          (v) => v.label.toLowerCase() == label.toLowerCase(),
      orElse: () => Patterns.unknown,
    );
  }

  static Iterable<String> toListString() {
    return values.sublist(0, values.length - 1).map((e) => e.label);
  }
}
