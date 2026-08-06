# IO.try_convert

### def IO.try_convert(obj) -> IO | nil

obj を to_io メソッドによって [IO](../../../class/IO.md) オブジェクトに変換します。
変換できなかった場合は nil を返します。

```ruby
p IO.try_convert(STDOUT)   # => STDOUT
p IO.try_convert("STDOUT") # => nil
```
