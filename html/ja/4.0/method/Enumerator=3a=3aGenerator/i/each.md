# Enumerator::Generator#each

### def each(*args) { ... } -> object
{: since="1.9.1"}

[Enumerator.new](../../../method/Enumerator/s/new.md) で使われるメソッドです。

新しく生成した [Enumerator::Yielder](../../../class/Enumerator=3a=3aYielder.md) オブジェクトを先頭に、それ以降に引数 args
を続けたものを引数として、[Enumerator.new](../../../method/Enumerator/s/new.md) に渡したブロックを実行します。
ブロックの実行結果をそのまま返します。
