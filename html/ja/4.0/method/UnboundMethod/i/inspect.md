# UnboundMethod#inspect

### def inspect -> String
### def to_s    -> String

self を読みやすい文字列として返します。

詳しくは [Method#inspect](../../../method/Method/i/inspect.md) を参照してください。

```ruby title="例"
p String.instance_method(:count).inspect # => "#<UnboundMethod: String#count>"
```

- **SEE** [Method#inspect](../../../method/Method/i/inspect.md)
