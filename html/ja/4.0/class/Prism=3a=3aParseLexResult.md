# class Prism::ParseLexResult < Prism::Result

[Prism?.parse_lex](../method/Prism/m/parse_lex.md) や [Prism?.parse_lex_file](../method/Prism/m/parse_lex_file.md) の戻り値のクラスです。
構文解析と字句解析の両方の結果と、付随情報(コメント・エラー・警告など。[Prism::Result](../class/Prism=3a=3aResult.md) を参照)を保持します。

Ruby 3.3 の prism にはこのクラスはなく、[Prism::ParseResult](../class/Prism=3a=3aParseResult.md) が使われていました(`value` の形式は同じです)。

- **SEE** [Prism?.parse_lex](../method/Prism/m/parse_lex.md), [Prism?.parse_lex_file](../method/Prism/m/parse_lex_file.md), [Prism::Result](../class/Prism=3a=3aResult.md)

## Instance Methods

- [value](../method/Prism=3a=3aParseLexResult/i/value.md)
