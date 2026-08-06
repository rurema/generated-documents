# Enumerator#next_values

### def next_values -> Array

「次」のオブジェクトを配列で返します。

[Enumerator#next](../../../method/Enumerator/i/next.md) とほぼ同様の挙動をします。終端まで到達した場合は
[StopIteration](../../../class/StopIteration.md) 例外を発生させます。

このメソッドは、

```ruby invalid
yield
```

と

```ruby invalid
yield nil
```

を区別するために使えます。

next メソッドによる外部列挙の状態は他のイテレータメソッドによる内部列挙には影響を与えません。
ただし、 [IO#each_line](../../../method/IO/i/each_line.md) のようにおおもとの列挙メカニズムが副作用を伴っている場合には影響があり得ます。

```ruby title="例: next と next_values の違いを"
o = Object.new
def o.each
  yield
  yield 1
  yield 1, 2
  yield nil
  yield [1, 2]
end
e = o.to_enum
p e.next_values
p e.next_values
p e.next_values
p e.next_values
p e.next_values
e = o.to_enum
p e.next
p e.next
p e.next
p e.next
p e.next

## yield args       next_values      next
#  yield            []               nil
#  yield 1          [1]              1
#  yield 1, 2       [1, 2]           [1, 2]
#  yield nil        [nil]            nil
#  yield [1, 2]     [[1, 2]]         [1, 2]
```

- **raise** `StopIteration` -- 列挙状態が既に最後へ到達しているとき
- **SEE** [Enumerator#next](../../../method/Enumerator/i/next.md), [Enumerator#peek](../../../method/Enumerator/i/peek.md), [Enumerator#peek_values](../../../method/Enumerator/i/peek_values.md)
