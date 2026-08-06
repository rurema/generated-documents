# Regexp.timeout

### def Regexp.timeout -> Float | nil

正規表現のマッチにかける時間の上限を秒数で返します。

上限が設定されていない場合は nil を返します。既定値は nil です。

この設定はプロセス全体で共有されます。個々の正規表現に設定された上限
([Regexp#timeout](../../../method/Regexp/i/timeout.md))がある場合、そちらが優先されます。

```ruby
p Regexp.timeout # => nil
```

- **SEE** [Regexp.timeout=](../../../method/Regexp/s/timeout=3d.md), [Regexp#timeout](../../../method/Regexp/i/timeout.md)
