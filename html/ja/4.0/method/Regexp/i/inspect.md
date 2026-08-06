# Regexp#inspect

### def inspect -> String

[Regexp#to_s](../../../method/Regexp/i/to_s.md) より自然な文字列を返します。

```ruby title="例"
p /^ugou.*?/i.to_s    # => "(?i-mx:^ugou.*?)"
p /^ugou.*?/i.inspect # => "/^ugou.*?/i"
```

- **SEE** [Regexp#to_s](../../../method/Regexp/i/to_s.md)
