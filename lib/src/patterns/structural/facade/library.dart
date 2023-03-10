/// This is not our class and we have no control over it.
/// To simplify it, you can use the 'facade'
class VideoFile {
  VideoFile(this._file);

  final String _file;

  String get _name {
    return _file.substring(0, _file.indexOf('.'));
  }

  String compressionToOgg() {
    return '$_file compress to $_name.${OggCompressionCodec().compress()}';
  }

  String compressionToMPEG4() {
    return '$_file compress to $_name.${MPEG4CompressionCodec().compress()}';
  }

  String compressionToMP4() {
    return '$_file compress to $_name.${MP4CompressionCodec().compress()}';
  }
}

class OggCompressionCodec {
  String compress() {
    return 'ogg';
  }
}

class MPEG4CompressionCodec {
  String compress() {
    return 'mpeg4';
  }
}

class MP4CompressionCodec {
  String compress() {
    return 'mp4';
  }
}
