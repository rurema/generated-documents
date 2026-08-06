# ObjectSpace::WeakKeyMap#clear

### def clear -> self

すべての組を取り除きます。`self` を返します。

```ruby
map = ObjectSpace::WeakKeyMap.new
key = "name"
map[key] = 1

map.clear
p map["name"] # => nil
```
