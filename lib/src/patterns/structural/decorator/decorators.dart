import 'dart:convert';
import 'package:archive/archive.dart';

import 'package:patterns_dart/src/patterns/structural/decorator/source.dart';

abstract class DataSourceDecorator implements DataSource {
  DataSourceDecorator(this._wrappee);

  final DataSource _wrappee;

  @override
  String readData() {
    return _wrappee.readData();
  }

  @override
  void writeData(String data) {
    _wrappee.writeData(data);
  }
}

class EncryptionDecorator extends DataSourceDecorator {

  EncryptionDecorator(super.source);

  @override
  String readData() {
    return utf8.decode(base64.decode(super.readData()));
  }

  @override
  void writeData(String data) {
    super.writeData(base64.encode(utf8.encode(data)));
  }
}

class CompressionDecorator extends DataSourceDecorator {

  CompressionDecorator(super.source);

  @override
  String readData() {
    final string = super.readData();
    final compressedString = base64.decode(string);
    final gzipBytes = GZipDecoder().decodeBytes(compressedString);
    return utf8.decode(gzipBytes);
  }

  @override
  void writeData(String data) {
    final stringBytes = utf8.encode(data);
    final gzipBytes = GZipEncoder().encode(stringBytes);
    final compressedString = base64.encode(gzipBytes!);
    super.writeData(compressedString);
  }
}
