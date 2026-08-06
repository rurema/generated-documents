# Set#each

### def each {|o| ... } -> self

集合の各要素についてブロックを実行します。

```ruby
s = Set[10, 20]
ary = []
s.each {|num| ary << num + 1}
p ary # => [11, 21]
```
