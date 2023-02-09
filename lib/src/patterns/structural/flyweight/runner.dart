import 'package:patterns_dart/src/patterns/runner.dart';
import 'package:patterns_dart/src/patterns/structural/flyweight/tree.dart';

class RunnerFlyweight implements IRunner {
  const RunnerFlyweight();

  @override
  String invoke() {
    final tree1 = Tree(
      TreeType.small,
      TreeFactory.getTreeType(color: TreeColors.red, symbol: '*'),
    );
    final tree2 = Tree(
      TreeType.small,
      TreeFactory.getTreeType(color: TreeColors.red, symbol: '*'),
    );

    final tree3 = Tree(
      TreeType.big,
      TreeFactory.getTreeType(color: TreeColors.gray, symbol: '#'),
    );
    final tree4 = Tree(
      TreeType.big,
      TreeFactory.getTreeType(color: TreeColors.gray, symbol: '#'),
    );

    final buffer = StringBuffer();
    for (final element in [tree1, tree2, tree3, tree4]) {
      buffer
        ..write(element.draw())
        ..write('\n');
    }
    return buffer.toString();
  }
}
