import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/decorator/decorators.dart';
import 'package:patterns_dart/src/patterns/structural/decorator/source.dart';

class RunnerDecorator implements IRunner {
  const RunnerDecorator();

  @override
  String invoke() {
    // simple file
    final source = FileDataSource('file_decorator')
      ..writeData('Simple text source');

    final simpleSource = source.readData();

    // encryption file
    final encryption = EncryptionDecorator(source)
      ..writeData('Encryption text source');

    final encryptionSource = encryption.readData();

    // compression file
    final compression = CompressionDecorator(source)
      ..writeData('Compression text source');

    final compressionSource = compression.readData();

    return '''
Simple source: $simpleSource
Encryption source: $encryptionSource
Compression source: $compressionSource
    ''';
  }
}
