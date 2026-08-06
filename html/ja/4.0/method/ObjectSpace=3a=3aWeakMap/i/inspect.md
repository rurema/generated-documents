# ObjectSpace::WeakMap#inspect

### def inspect -> String
{: since="2.0.0"}

self の情報を人間に読みやすい文字列にして返します。

各エントリは `参照元 => 参照先` の形式で出力されます。[Integer](../../../class/Integer.md)・[Symbol](../../../class/Symbol.md)・
true・false・nil などの immediate な値はそれ自身を [Object#inspect](../../../method/Object/i/inspect.md) した結果が使われますが、それ以外のオブジェクトは to_s や inspect を呼び出さずに
`#<クラス名:0xアドレス>` の形式で表示されます。

```ruby title="例"
weak_map = ObjectSpace::WeakMap.new
weak_map[:key] = 1

p weak_map.inspect # => "#<ObjectSpace::WeakMap:0x00007f5b6c0a5d20: :key => 1>"
```
