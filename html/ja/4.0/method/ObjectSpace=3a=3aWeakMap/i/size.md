# ObjectSpace::WeakMap#size

### def size   -> Integer
{: since="2.1.0"}
### def length -> Integer
{: since="2.1.0"}

保持しているエントリの数を返します。GC によって回収されたエントリは数えません。

```ruby title="例"
weak_map = ObjectSpace::WeakMap.new
key = "text"
weak_map[key] = "test"

p weak_map.size   # => 1
p weak_map.length # => 1
```
