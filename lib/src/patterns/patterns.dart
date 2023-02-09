import 'package:patterns_dart/src/patterns/behavioral/chain_of_responsibility/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/command/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/interpreter/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/iterator/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/mediator/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/memento/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/observer/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/state/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/strategy/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/template_method/runner.dart';
import 'package:patterns_dart/src/patterns/behavioral/visitor/runner.dart';
import 'package:patterns_dart/src/patterns/creational/abstract_factory/runner.dart';
import 'package:patterns_dart/src/patterns/creational/builder/runner.dart';
import 'package:patterns_dart/src/patterns/creational/factory_method/runner.dart';
import 'package:patterns_dart/src/patterns/creational/prototype/runner.dart';
import 'package:patterns_dart/src/patterns/creational/singleton/runner.dart';
import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/adapter/runner.dart';
import 'package:patterns_dart/src/patterns/structural/bridge/runner.dart';
import 'package:patterns_dart/src/patterns/structural/composite/runner.dart';
import 'package:patterns_dart/src/patterns/structural/decorator/runner.dart';
import 'package:patterns_dart/src/patterns/structural/facade/runner.dart';
import 'package:patterns_dart/src/patterns/structural/flyweight/runner.dart';
import 'package:patterns_dart/src/patterns/structural/proxy/runner.dart';

enum Patterns {
  abstractFactory('Abstract factory', RunnerAbstractFactory()),
  adapter('Adapter', RunnerAdapter()),
  bridge('Bridge', RunnerBridge()),
  builder('Builder', RunnerBuilder()),
  chainOfResponsibility('Chain of responsibility', RunnerCOfR()),
  command('Command', RunnerCommand()),
  composite('Composite', RunnerComposite()),
  decorator('Decorator', RunnerDecorator()),
  facade('Facade', RunnerFacade()),
  factoryMethod('Factory method', RunnerFactoryMethod()),
  flyweight('Flyweight', RunnerFlyweight()),
  interpreter('Interpreter', RunnerInterpreter()),
  iterator('Iterator', RunnerIterator()),
  mediator('Mediator', RunnerMediator()),
  memento('Memento', RunnerMemento()),
  observer('Observer', RunnerObserver()),
  prototype('Prototype', RunnerPrototype()),
  proxy('Proxy', RunnerProxy()),
  singleton('Singleton', RunnerSingleton()),
  state('State', RunnerState()),
  strategy('Strategy', RunnerStrategy()),
  templateMethod('Template method', RunnerTemplateMethod()),
  visitor('Visitor', RunnerVisitor()),
  unknown('Unknown', null);

  const Patterns(this.label, this.runner);

  final String label;
  final IRunner? runner;

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
