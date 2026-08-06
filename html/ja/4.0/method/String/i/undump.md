# String#undump

### def undump -> String

self のエスケープを戻したものを返します。

[String#dump](../../../method/String/i/dump.md) の逆変換にあたります。

```ruby title="例"
p "\"hello \\n ''\"".undump #=> "hello \n ''"
```

- **SEE** [String#dump](../../../method/String/i/dump.md)
