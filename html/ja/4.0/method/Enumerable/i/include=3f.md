# Enumerable#include?

### def member?(val)  -> bool
### def include?(val) -> bool

val と == の関係にある要素を含むとき真を返します。

- **param** `val` --   任意のオブジェクト

```ruby title="例"
p [2, 4, 6].include? 2 # => true
p [2, 4, 6].include? 1 # => false
p [2, 4, 6].member? 2  # => true
p [2, 4, 6].member? 1  # => false
```
