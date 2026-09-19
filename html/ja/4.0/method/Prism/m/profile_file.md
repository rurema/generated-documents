# Prism?.profile_file

### module_function def profile_file(filepath, **options) -> nil

`filepath` で指定したファイルを構文解析しますが、結果を Ruby オブジェクトとして構築せずに nil を返します。

[Prism?.profile](../../../method/Prism/m/profile.md) のファイル版です。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。
- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample.rb", "1 + 2\n")
p Prism.profile_file("sample.rb") # => nil
```

- **SEE** [Prism?.profile](../../../method/Prism/m/profile.md)
