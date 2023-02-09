import 'dart:io';

mixin DataSource {
  void writeData(String data);

  String readData();
}

class FileDataSource implements DataSource {
  FileDataSource(this._filename);
  final String _filename;

  @override
  String readData() {
    return File(_filename).readAsStringSync();
  }

  @override
  void writeData(String data) {
    File(_filename).writeAsStringSync(data);
  }
}
