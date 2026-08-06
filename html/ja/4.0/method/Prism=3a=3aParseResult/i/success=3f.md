# Prism::ParseResult#success?

### def success? -> bool

構文解析にエラーがなかった場合に true を返します。
[Prism::ParseResult#errors](../../../method/Prism=3a=3aParseResult/i/errors.md) が空かどうかで判定されます。

```ruby title="例"
require "prism"

p Prism.parse("1 + 1").success? # => true
p Prism.parse("1 +").success?   # => false
```

- **SEE** [Prism::ParseResult#failure?](../../../method/Prism=3a=3aParseResult/i/failure=3f.md), [Prism::ParseResult#errors](../../../method/Prism=3a=3aParseResult/i/errors.md)
