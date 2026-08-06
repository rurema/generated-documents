# class Prism::Result < Object

[Prism?.parse](../method/Prism/m/parse.md)・[Prism?.lex](../method/Prism/m/lex.md)・[Prism?.parse_lex](../method/Prism/m/parse_lex.md) などの解析系メソッドの戻り値([Prism::ParseResult](../class/Prism=3a=3aParseResult.md)・[Prism::LexResult](../class/Prism=3a=3aLexResult.md)・
[Prism::ParseLexResult](../class/Prism=3a=3aParseLexResult.md))の共通基底クラスです。解析結果本体
(`value`)以外の付随情報(コメント・マジックコメント・エラー・警告・ソースコード)を保持します。

Ruby 3.3 の prism にはこのクラスはなく、[Prism::ParseResult](../class/Prism=3a=3aParseResult.md) がこれらのメソッドを直接持っていました。

- **SEE** [Prism::ParseResult](../class/Prism=3a=3aParseResult.md), [Prism::LexResult](../class/Prism=3a=3aLexResult.md), [Prism::ParseLexResult](../class/Prism=3a=3aParseLexResult.md)

## Instance Methods

- [code_units_cache](../method/Prism=3a=3aResult/i/code_units_cache.md)
- [comments](../method/Prism=3a=3aResult/i/comments.md)
- [data_loc](../method/Prism=3a=3aResult/i/data_loc.md)
- [encoding](../method/Prism=3a=3aResult/i/encoding.md)
- [errors](../method/Prism=3a=3aResult/i/errors.md)
- [failure?](../method/Prism=3a=3aResult/i/failure=3f.md)
- [magic_comments](../method/Prism=3a=3aResult/i/magic_comments.md)
- [source](../method/Prism=3a=3aResult/i/source.md)
- [success?](../method/Prism=3a=3aResult/i/success=3f.md)
- [warnings](../method/Prism=3a=3aResult/i/warnings.md)
