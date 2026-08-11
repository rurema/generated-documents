# Enumerator#peek_values

### def peek_values -> Array

[Enumerator#next_values](../../../method/Enumerator/i/next_values.md) のように「次」のオブジェクトを配列で返しますが、列挙状態を変化させません。

[Enumerator#next](../../../method/Enumerator/i/next.md), [Enumerator#next_values](../../../method/Enumerator/i/next_values.md) のように現在までの列挙状態に応じて「次」のオブジェクトを返しますが、
next と異なり列挙状態を変更しません。

列挙が既に最後へ到達している場合は、[StopIteration](../../../class/StopIteration.md) 例外を発生します。

このメソッドは [Enumerator#next_values](../../../method/Enumerator/i/next_values.md) と同様

```ruby invalid
yield
```

と

```ruby invalid
yield nil
```

を区別するために使えます。

```ruby title="例"
o = Object.new
def o.each
  yield
  yield 1
  yield 1, 2
end
e = o.to_enum
p e.peek_values    # => []
e.next
p e.peek_values    # => [1]
p e.peek_values    # => [1]
e.next
p e.peek_values    # => [1, 2]
e.next
p e.peek_values    # raises StopIteration
```

- **raise** `StopIteration` -- 列挙状態が既に最後へ到達しているとき
- **SEE** [Enumerator#next](../../../method/Enumerator/i/next.md), [Enumerator#next_values](../../../method/Enumerator/i/next_values.md), [Enumerator#peek_values](../../../method/Enumerator/i/peek_values.md)
