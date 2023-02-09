import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/proxy/youtube.dart';

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
