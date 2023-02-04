import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:patterns_dart/src/base/patterns.dart';

class PatternCommand extends Command<int> {

  PatternCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser.addOption(
      'name',
      abbr: 'n',
      allowed: Patterns.toListString(),
    );
  }

  @override
  String get description => 'Here you can specify which pattern to execute';

  @override
  String get name => 'pattern';

  final Logger _logger;

  @override
  Future<int> run() async {
    switch (Patterns.fromString(argResults?['name'].toString() ?? '')) {
      /// Behavioral
      case Patterns.chainOfResponsibility:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.chainOfResponsibility.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.command:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.command.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.interpreter:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.interpreter.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.iterator:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.iterator.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.mediator:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.mediator.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.memento:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.memento.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.observer:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.observer.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.state:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.state.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.strategy:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.strategy.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.templateMethod:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.templateMethod.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.visitor:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.visitor.label))
            ..info('Result: coming soon...');
        }
        break;

      /// Creational
      case Patterns.abstractFactory:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.abstractFactory.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.builder:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.builder.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.factoryMethod:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.factoryMethod.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.prototype:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.prototype.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.singleton:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.singleton.label))
            ..info('Result: coming soon...');
        }
        break;

      /// Structural
      case Patterns.adapter:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.adapter.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.bridge:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.bridge.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.composite:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.composite.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.decorator:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.decorator.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.facade:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.facade.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.flyweight:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.flyweight.label))
            ..info('Result: coming soon...');
        }
        break;
      case Patterns.proxy:
        {
          _logger
            ..info(lightCyan.wrap(Patterns.proxy.label))
            ..info('Result: coming soon...');
        }
        break;

      /// Unknown
      case Patterns.unknown:
        {
          final output = lightRed.wrap('\nPattern not found!\n')!;
          _logger
            ..info(output)
            ..info('You can specify the following patterns:\n');
          for (final value in Patterns.values) {
            if (value != Patterns.unknown) {
              _logger.info(value.label);
            } else {
              _logger.info('\n');
            }
          }
        }
        break;
    }
    return ExitCode.success.code;
  }
}
