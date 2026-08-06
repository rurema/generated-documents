# Dir#inspect

### def inspect -> String

self の情報を人間に読みやすい文字列にして返します。

```ruby title="例"
p Dir.open("/") { |d| d.inspect } # => "#<Dir:/>"
```
