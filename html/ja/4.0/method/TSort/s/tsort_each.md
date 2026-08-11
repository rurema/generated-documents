# TSort.tsort_each

### def TSort.tsort_each(each_node, each_child) {|node| ...} -> nil
### def TSort.tsort_each(each_node, each_child) -> Enumerator

[TSort.tsort](../../../method/TSort/s/tsort.md) メソッドのイテレータ版です。

引数 each_node と each_child でグラフを表します。

- **param** `each_node` -- グラフ上の頂点をそれぞれ評価するcallメソッドを持つオブジェクトを指定します。

- **param** `each_child` -- 引数で与えられた頂点の子をそれぞれ評価するcallメソッドを持つオブジェクトを指定します。

- **raise** `TSort::Cyclic` -- 閉路が存在するとき、発生します.

```ruby title="使用例"
require 'tsort'

g = {1=>[2, 3], 2=>[4], 3=>[2, 4], 4=>[]}
each_node = lambda {|&b| g.each_key(&b) }
each_child = lambda {|n, &b| g[n].each(&b) }
TSort.tsort_each(each_node, each_child) {|n| p n }
# => 4
#    2
#    3
#    1
```

- **SEE** [TSort#tsort_each](../../../method/TSort/i/tsort_each.md)
