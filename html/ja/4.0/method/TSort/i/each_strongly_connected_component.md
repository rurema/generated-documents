# TSort#each_strongly_connected_component

### def each_strongly_connected_component {|nodes| ...} -> nil
### def each_strongly_connected_component -> Enumerator

[TSort#strongly_connected_components](../../../method/TSort/i/strongly_connected_components.md) メソッドのイテレータ版です。
obj.each_strongly_connected_component は
obj.strongly_connected_components.each に似ていますが、ブロックの評価中に obj が変更された場合は予期しない結果になることがあります。

each_strongly_connected_component は nil を返します。

```ruby title="使用例"
require 'tsort'

class Hash
  include TSort
  alias tsort_each_node each_key
  def tsort_each_child(node, &block)
    fetch(node).each(&block)
  end
end

non_sort = {1=>[2], 2=>[3, 4], 3=>[2], 4=>[]}

non_sort.each_strongly_connected_component{|nodes|
  p nodes
}

#出力
#=> [4]
#=> [2, 3]
#=> [1]
```

- **SEE** [TSort.each_strongly_connected_component](../../../method/TSort/s/each_strongly_connected_component.md)
