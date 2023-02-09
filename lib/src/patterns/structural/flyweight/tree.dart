import 'package:mason_logger/mason_logger.dart';

enum TreeColors { red, gray }

enum TreeType { big, small }

class TreeData {
  TreeData({required this.color, required this.symbol});

  final TreeColors color;
  final String symbol;
}

class TreeFactory {
  static final List<TreeData> _collection = <TreeData>[];

  static TreeData getTreeType({
    required TreeColors color,
    required String symbol,
  }) {
    try {
      return _collection
          .where((o) => o.color == color && o.symbol == symbol)
          .first;
    } catch (e) {
      final tree = TreeData(
        color: color,
        symbol: symbol,
      );
      _collection.add(tree);
      return tree;
    }
  }

  static int countData() {
    return _collection.length;
  }
}

class Tree {
  Tree(this.type, this.data);

  final TreeType type;
  final TreeData data;

  String draw() {
    String tree;
    switch (type) {
      case TreeType.big:
        tree = '''
big ---${data.symbol * 2}--------
-----${data.symbol * 6}------
---${data.symbol * 10}----
--${data.symbol * 12}---
---${data.symbol * 10}----
------${data.symbol * 4}-------
-------${data.symbol * 2}--------
-------${data.symbol * 2}--------
''';
        break;
      case TreeType.small:
        tree = '''
small -----------
------${data.symbol * 4}-------
---${data.symbol * 10}----
---${data.symbol * 10}----
------${data.symbol * 4}-------
-------${data.symbol * 2}--------
-------${data.symbol * 2}--------
''';
        break;
    }

    switch (data.color) {
      case TreeColors.red:
        return lightRed.wrap(tree) ?? tree;
      case TreeColors.gray:
        return lightGray.wrap(tree) ?? tree;
    }
  }
}
