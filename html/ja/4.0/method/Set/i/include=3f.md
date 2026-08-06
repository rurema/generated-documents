# Set#include?

### def include?(o) -> bool
### def member?(o) -> bool
### def ===(o) -> bool

オブジェクト o がその集合に属する場合に true を返します。

- **param** `o` -- オブジェクトを指定します。

```ruby
set = Set['hello', 'world']
p set.include?('world') # => true
p set.include?('bye')   # => false
```
