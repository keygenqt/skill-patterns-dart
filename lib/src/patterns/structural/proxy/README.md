Proxy
===

**Proxy** is a structural design pattern that lets you provide a substitute or placeholder for
another object. A proxy controls access to the original object, allowing you to perform something
either before or after the request gets through to the original object.

#### Runner

```dart
class RunnerProxy implements IRunner {
  const RunnerProxy();

  @override
  Future<String> invoke() async {
    // service
    final youTubeService = YouTubeLib();
    // proxy
    final youTubeProxy = CachedYouTubeLib(youTubeService);
    // manager can use service & proxy
    final manager = YouTubeManager(youTubeProxy);

    // 10 second ? no - cache
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();
    await manager.getStringList();

    return Future.value(manager.getStringList());
  }
}
```

#### Output

```shell
Proxy
[Video 1, Video 2, Video 3]
```