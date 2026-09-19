# Prism?.lex_compat

### module_function def lex_compat(source, **options) -> Prism::Result

`source` を字句解析し、[Ripper](../../../class/Ripper.md) の `Ripper.lex` に近い形式のトークン列を持つ結果オブジェクトを返します。

戻り値は内部クラス `Prism::LexCompat::Result` のインスタンスです。`value` は各要素が `[[行, 桁], 種類を表すシンボル, 文字列, 状態]` という形式になっている配列で、`Ripper.lex` の戻り値に近い形式です。[Prism?.lex](../../../method/Prism/m/lex.md) が返す [Prism::Token](../../../class/Prism=3a=3aToken.md) とは異なり、Ripper 互換の配列形式でトークンを扱いたい場合に使います。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。
- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

result = Prism.lex_compat("1 + 2")
p result.value.first
# => [[1, 0], :on_int, "1", END]
```

- **SEE** [Prism?.lex](../../../method/Prism/m/lex.md), [Ripper](../../../class/Ripper.md)
