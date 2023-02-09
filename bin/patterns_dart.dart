import 'dart:io';

import 'package:patterns_dart/src/command_runner.dart';

Future<void> main(List<String> args) async {
  await _flushThenExit(await PatternsDartCommandRunner().run(args));
}

Future<void> _flushThenExit(int status) {
  return Future.wait<void>([stdout.close(), stderr.close()])
      .then<void>((_) => exit(status));
}
