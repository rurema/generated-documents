# Hash#values_at

### def values_at(*keys) -> [object]

引数で指定されたキーに対応する値の配列を返します。

キーに対応する要素がなければデフォルト値が使用されます。

- **param** `keys` -- キーを 0 個以上指定します。

- **return** -- 引数で指定されたキーに対応する値の配列を返します。
        引数が指定されなかった場合は、空の配列を返します。

```ruby title="例"
h = {1=>"a", 2=>"b", 3=>"c"}

p h.values_at(1,3,4)               #=> ["a", "c", nil]
# [h[1], h[3] ,h[4]] と同じ
```

- **SEE** [Hash#\[\]](../../../method/Hash/i/=5b=5d.md), [Hash.new](../../../method/Hash/s/new.md), [Hash#default](../../../method/Hash/i/default.md), [Hash#default_proc](../../../method/Hash/i/default_proc.md), [Array#values_at](../../../method/Array/i/values_at.md)
