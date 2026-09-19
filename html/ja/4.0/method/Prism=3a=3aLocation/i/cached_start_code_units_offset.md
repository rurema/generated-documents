# Prism::Location#cached_start_code_units_offset

### def cached_start_code_units_offset(cache) -> Integer

キャッシュを使って、開始位置の、指定エンコーディングのコード単位でのオフセットを返します。

- **param** `cache` -- [Prism::Result#code_units_cache](../../../method/Prism=3a=3aResult/i/code_units_cache.md) で得たキャッシュを指定します。

```ruby title="例"
require "prism"

result = Prism.parse("x = \"あい\" + 1\n")
loc = result.value.statements.body[0].location
cache = result.code_units_cache(Encoding::UTF_16LE)
p loc.cached_start_code_units_offset(cache)
# => 0
```

- **SEE** [Prism::Result#code_units_cache](../../../method/Prism=3a=3aResult/i/code_units_cache.md)
