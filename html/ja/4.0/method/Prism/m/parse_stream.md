# Prism?.parse_stream

### module_function def parse_stream(stream, **options) -> Prism::ParseResult

`gets` に応答するオブジェクト `stream` から少しずつ読み込みながら構文解析し、結果を [Prism::ParseResult](../../../class/Prism=3a=3aParseResult.md) として返します。

ソースコード全体を事前に文字列としてメモリに読み込むことなく構文解析したい場合に使います。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `stream` -- `gets(limit)` に応答するオブジェクトを指定します。[IO](../../../class/IO.md) や [StringIO](../../../class/StringIO.md) などが使えます。
- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"
require "stringio"

result = Prism.parse_stream(StringIO.new("1 + 2\n"))
p result.class        # => Prism::ParseResult
p result.value.slice   # => "1 + 2"
```

- **SEE** [Prism?.parse](../../../method/Prism/m/parse.md)
