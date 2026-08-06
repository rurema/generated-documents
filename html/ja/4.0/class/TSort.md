# module TSort

TSort は強連結成分に関する Tarjan のアルゴリズムを用いたトポロジカルソートの実装です。

TSort は任意のオブジェクトを有向グラフとして解釈できるように設計されています。
TSort がオブジェクトをグラフとして解釈するには2つのメソッドを要求します。
すなわち、tsort_each_node と tsort_each_child です。

- tsort_each_node はグラフ上のすべての頂点を巡回するのに用いられます。
- tsort_each_child は与えられた頂点の子を巡回するのに用いられます。

頂点同士の等価性は eql? と hash によって定義されます。
これは TSort が内部でハッシュを用いているからです。

## Class Methods

- [each_strongly_connected_component](../method/TSort/s/each_strongly_connected_component.md)
- [each_strongly_connected_component_from](../method/TSort/s/each_strongly_connected_component_from.md)
- [strongly_connected_components](../method/TSort/s/strongly_connected_components.md)
- [tsort](../method/TSort/s/tsort.md)
- [tsort_each](../method/TSort/s/tsort_each.md)

## Instance Methods

- [each_strongly_connected_component](../method/TSort/i/each_strongly_connected_component.md)
- [each_strongly_connected_component_from](../method/TSort/i/each_strongly_connected_component_from.md)
- [strongly_connected_components](../method/TSort/i/strongly_connected_components.md)
- [tsort](../method/TSort/i/tsort.md)
- [tsort_each](../method/TSort/i/tsort_each.md)
- [tsort_each_child](../method/TSort/i/tsort_each_child.md)
- [tsort_each_node](../method/TSort/i/tsort_each_node.md)
