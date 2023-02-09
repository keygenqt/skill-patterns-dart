Flyweight
===

In computer programming, the **flyweight** software design pattern refers to an object that
minimizes memory usage by sharing some of its data with other similar objects.

#### Runner

```dart
class RunnerFlyweight implements IRunner {
  const RunnerFlyweight();

  @override
  String invoke() {
    final tree1 = Tree(
      TreeType.small,
      TreeFactory.getTreeType(color: TreeColors.green, symbol: '*'),
    );
    final tree2 = Tree(
      TreeType.small,
      TreeFactory.getTreeType(color: TreeColors.green, symbol: '*'),
    );

    final tree3 = Tree(
      TreeType.small,
      TreeFactory.getTreeType(color: TreeColors.red, symbol: '#'),
    );
    final tree4 = Tree(
      TreeType.small,
      TreeFactory.getTreeType(color: TreeColors.red, symbol: '#'),
    );

    final tree5 = Tree(
      TreeType.big,
      TreeFactory.getTreeType(color: TreeColors.white, symbol: '#'),
    );

    final buffer = StringBuffer();
    for (final element in [tree1, tree2, tree3, tree4, tree5]) {
      buffer
        ..write(element.draw())
        ..write('\n');
    }
    return buffer.toString();
  }
}
```

#### Output

```shell
Flyweight
small -----------
------****-------
---**********----
---**********----
------****-------
-------**--------
-------**--------

small -----------
------****-------
---**********----
---**********----
------****-------
-------**--------
-------**--------

small -----------
------####-------
---##########----
---##########----
------####-------
-------##--------
-------##--------

small -----------
------####-------
---##########----
---##########----
------####-------
-------##--------
-------##--------

big ---##--------
-----######------
---##########----
--############---
---##########----
------####-------
-------##--------
-------##--------
```