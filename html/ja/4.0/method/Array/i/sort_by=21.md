# Array#sort_by!

### def sort_by!               -> Enumerator
### def sort_by! {|item| ... } -> self

sort_by の破壊的バージョンです。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

Array#sort_by! は安定ではありません (unstable sort)。

```ruby title="例"
fruits = %w{apple pear fig}
fruits.sort_by! { |word| word.length }
p fruits # => ["fig", "pear", "apple"]
```

- **SEE** [Enumerable#sort_by](../../../method/Enumerable/i/sort_by.md)
