# Prism?.dump

### module_function def dump(source, **options) -> String

`source` を構文解析した結果を prism 独自のバイナリ形式にシリアライズし、その文字列を返します。この形式は主に、CRuby の拡張ライブラリを経由せずに、他言語(JavaScript、Rust、Java など)の実装から prism の構文木を読み込むために使われます。エンコーディングは常に ASCII-8BIT (BINARY) になります。オプションは [Prism?.parse](../../../method/Prism/m/parse.md)
と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

dumped = Prism.dump("1 + 2")
p dumped.class     # => String
p dumped.encoding  # => #<Encoding:BINARY (ASCII-8BIT)>
```
