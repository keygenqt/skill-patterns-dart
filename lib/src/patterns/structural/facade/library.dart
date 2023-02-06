/// This is not our class and we have no control over it.
/// To simplify it, you can use the 'facade'
class VideoFile {
  VideoFile(this._filename);

  final String _filename;

  String compressionToOgg() {
    return '$_filename: ${OggCompressionCodec().compress()}';
  }

  String compressionToMPEG4() {
    return '$_filename: ${MPEG4CompressionCodec().compress()}';
  }

  String compressionToMP4() {
    return '$_filename: ${MP4CompressionCodec().compress()}';
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
