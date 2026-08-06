# Set#map!

### def collect! {|o| ...} -> self
### def map! {|o| ...} -> self

集合の各要素についてブロックを評価し、その結果で元の集合を置き換えます。

```ruby
set = Set['hello', 'world']
set.map! {|str| str.capitalize}
p set  # => Set["Hello", "World"]
```

- **SEE** [Enumerable#collect](../../../method/Enumerable/i/collect.md)
