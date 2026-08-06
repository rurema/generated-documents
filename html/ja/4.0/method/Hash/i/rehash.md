# Hash#rehash

### def rehash -> self

キーのハッシュ値を再計算します。

キーになっているオブジェクトの内容が変化した時など、ハッシュ値が変わってしまった場合はこのメソッドを使ってハッシュ値を再計算しない限り、そのキーに対応する値を取り出すことができなくなります。

- **raise** `RuntimeError` -- [Hash#each](../../../method/Hash/i/each.md)などのイテレータの評価途中でrehashすると発生します。
- **return** -- selfを返します。

```ruby title="例"
a = [ "a", "b" ]
h = { a => 100 }

p h[a]       #=> 100

a[0] = "z"
p h[a]       #=> nil

h.rehash
p h[a]       #=> 100
```

- **SEE** [Object#hash](../../../method/Object/i/hash.md)
