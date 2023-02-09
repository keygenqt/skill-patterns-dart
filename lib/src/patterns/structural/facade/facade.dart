import 'package:patterns_dart/src/patterns/structural/facade/library.dart';

enum VideoFormat {
  ogg,
  mpeg4,
  mp4,
}

// We create a facade class to hide the framework's complexity
// behind a simple interface. It's a trade-off between
// functionality and simplicity.
class VideoConverter {
  String convert(String filename, VideoFormat format) {
    final video = VideoFile(filename);
    switch (format) {
      case VideoFormat.ogg:
        return video.compressionToOgg();
      case VideoFormat.mpeg4:
        return video.compressionToMPEG4();
      case VideoFormat.mp4:
        return video.compressionToMP4();
    }
  }
}
