# Prism?.parse_file

### module_function def parse_file(filepath, **options) -> Prism::ParseResult

`filepath` で指定したファイルを読み込んで構文解析します。
オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample.rb", "def foo(a, b) = a + b\n")

result = Prism.parse_file("sample.rb")
p result.class         # => Prism::ParseResult
p result.value.class   # => Prism::ProgramNode
p result.success?      # => true
```

- **SEE** [Prism?.parse](../../../method/Prism/m/parse.md)
