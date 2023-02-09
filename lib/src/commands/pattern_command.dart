import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:patterns_dart/src/extension/object.dart';
import 'package:patterns_dart/src/patterns/patterns.dart';

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

    final pattern = Patterns.fromString(argResults?['name'].toString() ?? '');

    if (pattern != Patterns.unknown) {
      final result = await pattern.runner?.invoke();
      _logger
        ..info(lightCyan.wrap(pattern.label))
        ..info(result);
    } else {
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

    return ExitCode.success.code;
  }
}
