# Vector#each

### def each{|e| ... } -> self
### def each -> Enumerator

ベクトルの各要素をブロックの引数として順にブロックを呼び出します。

このクラスは [Enumerable](../../../class/Enumerable.md) を include しているため、このメソッドを経由して Enumerable の各メソッドを使うことができます。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。
