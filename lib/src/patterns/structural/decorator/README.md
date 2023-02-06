Decorator
===

**Decorator** is a structural design pattern that lets you attach new behaviors to objects by
placing these objects inside special wrapper objects that contain the behaviors.

#### Runner

```dart
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
```

#### Output

```shell
Decorator
Simple source: Simple text source
Encryption source: Encryption text source
Compression source: Compression text source
```