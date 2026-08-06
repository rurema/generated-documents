# Prism?.parse_failure?

### module_function def parse_failure?(source, **options) -> bool

[Prism?.parse_success?](../../../method/Prism/m/parse_success=3f.md) の否定です。`source` の構文解析にエラーがあった場合に true を返します。オプションは [Prism?.parse](../../../method/Prism/m/parse.md)
と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

p Prism.parse_failure?("1 + 1") # => false
p Prism.parse_failure?("1 +")   # => true
```

- **SEE** [Prism?.parse_success?](../../../method/Prism/m/parse_success=3f.md), [Prism::ParseResult#failure?](../../../method/Prism=3a=3aParseResult/i/failure=3f.md)
