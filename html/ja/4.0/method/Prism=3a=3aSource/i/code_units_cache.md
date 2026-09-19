# Prism::Source#code_units_cache

### def code_units_cache(encoding) -> Prism::CodeUnitsCache

指定したエンコーディングでのコード単位のオフセットを高速に計算するためのキャッシュを生成します。

[Prism::Location](../../../class/Prism=3a=3aLocation.md) の `cached_start_code_units_offset` などのメソッドに、多数の位置に対して繰り返し使うためのキャッシュとして渡します。

- **param** `encoding` -- コード単位の基準となるエンコーディングを指定します。

```ruby title="例"
require "prism"

result = Prism.parse("x = \"あい\" + 1\n")
cache = result.source.code_units_cache(Encoding::UTF_16LE)
p cache.class # => Prism::CodeUnitsCache
p cache[9]    # => 7
```

- **SEE** [Prism::Location#cached_start_code_units_offset](../../../method/Prism=3a=3aLocation/i/cached_start_code_units_offset.md), [Prism::Result#code_units_cache](../../../method/Prism=3a=3aResult/i/code_units_cache.md)
