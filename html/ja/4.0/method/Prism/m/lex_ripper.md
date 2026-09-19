# Prism?.lex_ripper

### module_function def lex_ripper(source) -> Array

`source` を [Ripper](../../../class/Ripper.md) の `Ripper.lex` を使って字句解析します。

空白のイベントを除いた、`Ripper.lex` とほぼ同じ形式のトークンの配列を返します。[Prism?.lex_compat](../../../method/Prism/m/lex_compat.md) とは異なり、prism 自身ではなく組み込みの [Ripper](../../../class/Ripper.md) を使って字句解析します。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。
- **raise** `SyntaxError` -- `source` の構文が不正な場合に発生します。

```ruby title="例"
require "prism"

p Prism.lex_ripper("1 + 2")
# => [[[1, 0], :on_int, "1", END], [[1, 2], :on_op, "+", BEG], [[1, 4], :on_int, "2", END]]
```

- **SEE** [Prism?.lex_compat](../../../method/Prism/m/lex_compat.md), [Ripper](../../../class/Ripper.md)
