# Hash#compare_by_identity

### def compare_by_identity -> self

ハッシュのキーの一致判定をオブジェクトの同一性で判定するように変更します。

デフォルトでは、キーのオブジェクトによっては内容が同じならキーが一致しているとみなされますが、より厳密に
[Object#object_id](../../../method/Object/i/object_id.md)が一致しているかどうかを条件とするようにselfを変更します。

selfが変化する破壊的メソッドです。

- **return** -- selfを返します。

```ruby title="例"
h1 = { "a" => 100, "b" => 200, :c => "c" }
p h1.compare_by_identity? # => false
p h1["a"]        # => 100

h1.compare_by_identity

p h1.compare_by_identity? # => true
p h1["a"]        # => nil  # この"a"と最初の"a"とは違うオブジェクト
p h1[:c]         # => "c"  # 同じ内容のシンボルはすべて同一
```

- **SEE** [Hash#compare_by_identity?](../../../method/Hash/i/compare_by_identity=3f.md)
