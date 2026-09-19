# Prism?.profile

### module_function def profile(source, **options) -> nil

`source` を構文解析しますが、結果を Ruby オブジェクトとして構築せずに nil を返します。

プロファイラが構文木を Ruby オブジェクト化するオーバーヘッドを避けつつ、構文解析そのものの処理時間を計測できるようにするためのメソッドです。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。
- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

p Prism.profile("1 + 2") # => nil
```

- **SEE** [Prism?.parse](../../../method/Prism/m/parse.md), [Prism?.profile_file](../../../method/Prism/m/profile_file.md)
