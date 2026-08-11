# String#include?

### def include?(substr) -> bool

文字列中に部分文字列 substr が含まれていれば真を返します。

- **param** `substr` --    検索する文字列

```ruby title="例"
p "hello".include? "lo" # => true
p "hello".include? "ol" # => false
p "hello".include? ?h   # => true
```
