# Prism?.load

### module_function def load(source, serialized, freeze = false) -> Prism::ParseResult

`source` と、それを prism でシリアライズした文字列 `serialized` から構文木を復元し、[Prism::ParseResult](../../../class/Prism=3a=3aParseResult.md) として返します。

[Prism?.dump](../../../method/Prism/m/dump.md) や [Prism?.dump_file](../../../method/Prism/m/dump_file.md) で得たシリアライズ済み文字列を、それを生成したときと同じ `source` と組み合わせてデシリアライズするために使います。`freeze` に true を指定すると、復元した構文木の各ノードを frozen にします。

- **param** `source` -- `serialized` を生成したときに使ったソースコードの文字列を指定します。
- **param** `serialized` -- [Prism?.dump](../../../method/Prism/m/dump.md) などで得たシリアライズ済みの文字列を指定します。
- **param** `freeze` -- true を指定すると復元した構文木を frozen にします。省略した場合は false です。

```ruby title="例"
require "prism"

source = "1 + 2"
dumped = Prism.dump(source)
result = Prism.load(source, dumped)
p result.class        # => Prism::ParseResult
p result.value.slice   # => "1 + 2"
```

- **SEE** [Prism?.dump](../../../method/Prism/m/dump.md), [Prism?.dump_file](../../../method/Prism/m/dump_file.md)
