# Psych::Nodes::Node#each

### def each -> Enumerator
### def each{|node| ... } -> ()

self のノードをルートとする部分木の各ノードを引数としてブロックを呼び出します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。
