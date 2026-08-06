# Enumerator#size

### def size -> Integer | Float::INFINITY | nil
{: since="2.0.0"}

self の要素数を返します。

要素数が無限の場合は [Float::INFINITY](../../../method/Float/c/INFINITY.md) を返します。
[Enumerator.new](../../../method/Enumerator/s/new.md) に [Proc](../../../class/Proc.md) オブジェクトを指定していた場合はその実行結果を返します。呼び出した時に要素数が不明であった場合は nil を返します。

```ruby title="例"
p (1..100).to_a.permutation(4).size # => 94109400
p loop.size # => Float::INFINITY
p (1..100).drop_while.size # => nil
```

- **SEE** [Enumerator.new](../../../method/Enumerator/s/new.md)
