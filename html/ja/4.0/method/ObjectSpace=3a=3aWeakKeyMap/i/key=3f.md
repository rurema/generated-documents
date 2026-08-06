# ObjectSpace::WeakKeyMap#key?

### def key?(key) -> bool

key に対応する組があれば true を、無ければ false を返します。

- **param** `key` -- 探すキーを指定します。

```ruby
map = ObjectSpace::WeakKeyMap.new
key = "name"
map[key] = 1

p map.key?("name") # => true
p map.key?("zzz")  # => false
```
