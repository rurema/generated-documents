# Enumerator::Lazy#flat_map

### def flat_map {|item| ... } -> Enumerator::Lazy
### def collect_concat {|item| ... } -> Enumerator::Lazy

ブロックの実行結果をひとつに繋げたものに対してイテレートするような
Enumerator::Lazy のインスタンスを返します。

```ruby
p ["foo", "bar"].lazy.flat_map {|i| i.each_char.lazy}.force
#=> ["f", "o", "o", "b", "a", "r"]
```

ブロックの返した値 x は、以下の場合にのみ分解され、連結されます。

- x が配列であるか、to_ary メソッドを持つとき
- x が each および force メソッドを持つ (例：Enumerator::Lazy) とき

それ以外のときは、x は分解されず、そのままの値として使われます。

```ruby
p [{a:1}, {b:2}].lazy.flat_map {|i| i}.force
#=> [{:a=>1}, {:b=>2}]
```

- **raise** `ArgumentError` -- ブロックを指定しなかった場合に発生します。

- **SEE** [Enumerable#flat_map](../../../method/Enumerable/i/flat_map.md)
