# Array#include?

### def include?(val)    -> bool

配列が val と == で等しい要素を持つ時に真を返します。

- **param** `val` -- オブジェクトを指定します。

```ruby title="例"
a = [ "a", "b", "c" ]
p a.include?("b")     # => true
p a.include?("z")     # => false
```
