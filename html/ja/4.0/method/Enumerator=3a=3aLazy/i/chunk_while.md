# Enumerator::Lazy#chunk_while

### def chunk_while {|elt_before, elt_after| ... } -> Enumerator::Lazy
{: since="2.3.0"}

[Enumerable#chunk_while](../../../method/Enumerable/i/chunk_while.md) と同じですが、Enumerator ではなく Enumerator::Lazy を返します。

- **raise** `ArgumentError` -- ブロックを指定しなかった場合に発生します。
