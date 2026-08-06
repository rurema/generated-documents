# Exception#inspect

### def inspect -> String

self のクラス名と message を文字列にして返します。

```ruby title="例"
begin
  raise "exception"
rescue
  p $!.inspect # => "#<RuntimeError: exception>"
end
```
