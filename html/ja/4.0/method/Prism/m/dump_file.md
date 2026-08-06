# Prism?.dump_file

### module_function def dump_file(filepath, **options) -> String

`filepath` で指定したファイルを構文解析し、[Prism?.dump](../../../method/Prism/m/dump.md) と同様にシリアライズした文字列を返します。オプションは [Prism?.parse](../../../method/Prism/m/parse.md)
と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample.rb", "def foo(a, b) = a + b\n")

p Prism.dump_file("sample.rb").class # => String
```

- **SEE** [Prism?.dump](../../../method/Prism/m/dump.md)
