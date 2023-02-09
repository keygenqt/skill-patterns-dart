import 'dart:async';

mixin IYouTubeLib {
  void getVideoInfo(int id);

  Future<List<String>> listVideos();
}

class YouTubeLib implements IYouTubeLib {
  @override
  void getVideoInfo(int id) {}

  List<String> getBigData() {
    return [
      'Video 1',
      'Video 2',
      'Video 3',
    ];
  }

  @override
  Future<List<String>> listVideos() {
    return Future<List<String>>.delayed(
      const Duration(seconds: 1),
      getBigData,
    );
  }
}

class CachedYouTubeLib implements IYouTubeLib {
  CachedYouTubeLib(this._service);

  final YouTubeLib _service;
  final List<String> _cache = <String>[];

  @override
  void getVideoInfo(int id) {}

  @override
  Future<List<String>> listVideos() {
    if (_cache.isNotEmpty) {
      return Future.value(_cache);
    }
    return _service.listVideos().then((value) {
      _cache
        ..clear()
        ..addAll(value);
      return _cache;
    });
  }
}

class YouTubeManager {
  YouTubeManager(this._service);

  final IYouTubeLib _service;

  Future<String> getStringList() {
    return _service.listVideos().then((value) {
      return value.toString();
    });
  }
}
