# Prism?.parse_success?

### module_function def parse_success?(source, **options) -> bool

`source` を構文解析し、エラーなく解析できた場合に true を返します。
[Prism?.parse](../../../method/Prism/m/parse.md) を呼び出して [`.success?`](../../../method/Prism=3a=3aParseResult/i/success=3f.md) を確認するのとほぼ同じ結果になりますが、構文木を Ruby オブジェクトとして構築しないぶん高速です。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

p Prism.parse_success?("1 + 1") # => true
p Prism.parse_success?("1 +")   # => false
```

- **SEE** [Prism?.parse_failure?](../../../method/Prism/m/parse_failure=3f.md), [Prism::ParseResult#success?](../../../method/Prism=3a=3aParseResult/i/success=3f.md)
