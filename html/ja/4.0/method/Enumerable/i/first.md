# Enumerable#first

### def first      -> object | nil
### def first(n)   -> Array

Enumerable オブジェクトの最初の要素、もしくは最初の n 要素を返します。

Enumerable オブジェクトが空の場合、引数を指定しない形式では nil を返します。
引数を指定する形式では、空の配列を返します。

- **param** `n` -- 取得する要素数。

```ruby title="例"
e = "abcd".each_byte
p e.first # => 97
p e.first(2) # => [97,98]
e = "".each_byte
p e.first # => nil
p e.first(2) # => []
```
