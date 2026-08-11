# Enumerator#peek

### def peek -> object

「次」のオブジェクトを返しますが、列挙状態を変化させません。

[Enumerator#next](../../../method/Enumerator/i/next.md) のように現在までの列挙状態に応じて「次」のオブジェクトを返しますが、
next と異なり列挙状態を変更しません。

列挙が既に最後へ到達している場合は、[StopIteration](../../../class/StopIteration.md) 例外を発生します。

```ruby title="例"
a = [1,2,3]
e = a.to_enum
p e.next   # => 1
p e.peek   # => 2
p e.peek   # => 2
p e.peek   # => 2
p e.next   # => 2
p e.next   # => 3
p e.next   #raises StopIteration
```

- **raise** `StopIteration` -- 列挙状態が既に最後へ到達しているとき
- **SEE** [Enumerator#next](../../../method/Enumerator/i/next.md), [Enumerator#next_values](../../../method/Enumerator/i/next_values.md), [Enumerator#peek_values](../../../method/Enumerator/i/peek_values.md)
