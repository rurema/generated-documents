# Prism?.parse_file_success?

### module_function def parse_file_success?(filepath, **options) -> bool

`filepath` で指定したファイルを構文解析し、エラーなく解析できた場合に true を返します。

[Prism?.parse_file](../../../method/Prism/m/parse_file.md) を呼び出して [`.success?`](../../../method/Prism=3a=3aParseResult/i/success=3f.md) を確認するのとほぼ同じ結果になりますが、構文木を Ruby オブジェクトとして構築しないぶん高速です。[Prism?.parse_success?](../../../method/Prism/m/parse_success=3f.md) のファイル版です。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。
- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample.rb", "def foo(a, b) = a + b\n")
p Prism.parse_file_success?("sample.rb") # => true

File.write("bad.rb", "def foo(\n")
p Prism.parse_file_success?("bad.rb")    # => false
```

- **SEE** [Prism?.parse_file_failure?](../../../method/Prism/m/parse_file_failure=3f.md), [Prism?.parse_success?](../../../method/Prism/m/parse_success=3f.md)
