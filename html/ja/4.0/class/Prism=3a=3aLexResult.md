# class Prism::LexResult < Prism::Result

[Prism?.lex](../method/Prism/m/lex.md) や [Prism?.lex_file](../method/Prism/m/lex_file.md) の戻り値のクラスです。
字句解析の結果と、付随情報(コメント・エラー・警告など。
[Prism::Result](../class/Prism=3a=3aResult.md) を参照)を保持します。

Ruby 3.3 の prism にはこのクラスはなく、[Prism::ParseResult](../class/Prism=3a=3aParseResult.md) が使われていました(`value` の形式は同じです)。

- **SEE** [Prism?.lex](../method/Prism/m/lex.md), [Prism?.lex_file](../method/Prism/m/lex_file.md), [Prism::Result](../class/Prism=3a=3aResult.md)

## Instance Methods

- [value](../method/Prism=3a=3aLexResult/i/value.md)
