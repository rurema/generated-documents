# Prism?.parse_file_failure?

### module_function def parse_file_failure?(filepath, **options) -> bool

`filepath` で指定したファイルの構文解析にエラーがあった場合に true を返します。

[Prism?.parse_file_success?](../../../method/Prism/m/parse_file_success=3f.md) の否定です。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。
- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample.rb", "def foo(a, b) = a + b\n")
p Prism.parse_file_failure?("sample.rb") # => false

File.write("bad.rb", "def foo(\n")
p Prism.parse_file_failure?("bad.rb")    # => true
```

- **SEE** [Prism?.parse_file_success?](../../../method/Prism/m/parse_file_success=3f.md)
