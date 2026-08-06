# Prism::ParseResult#failure?

### def failure? -> bool

[Prism::ParseResult#success?](../../../method/Prism=3a=3aParseResult/i/success=3f.md) の否定です。構文解析にエラーがあった場合に true を返します。

```ruby title="例"
require "prism"

p Prism.parse("1 + 1").failure? # => false
p Prism.parse("1 +").failure?   # => true
```

- **SEE** [Prism::ParseResult#success?](../../../method/Prism=3a=3aParseResult/i/success=3f.md)
