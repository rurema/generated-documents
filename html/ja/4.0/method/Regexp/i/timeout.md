# Regexp#timeout

### def timeout -> Float | nil

`self` のマッチにかける時間の上限を秒数で返します。

上限が設定されていない場合は `nil` を返します。

この設定は正規表現オブジェクトごとのもので、[Regexp.new](../../../method/Regexp/s/new.md) の `timeout` キーワード引数で指定します。設定されている場合、[Regexp.timeout](../../../method/Regexp/s/timeout.md) によるプロセス全体の設定よりも優先されます。

```ruby
re = Regexp.new("^(a|a)*$", timeout: 0.5)
p re.timeout      # => 0.5

p /^(a|a)*$/.timeout # => nil
```

- **SEE** [Regexp.timeout](../../../method/Regexp/s/timeout.md), [Regexp.timeout=](../../../method/Regexp/s/timeout=3d.md)
