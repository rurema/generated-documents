# class Prism::Comment < Object

[Prism::ParseResult#comments](../method/Prism=3a=3aParseResult/i/comments.md) や [Prism?.parse_comments](../method/Prism/m/parse_comments.md) で得られる、ソースコード中のコメントを表す抽象基底クラスです。

実際に生成されるのはサブクラスの [Prism::InlineComment](../class/Prism=3a=3aInlineComment.md)(`#` から始まる通常のコメント)または [Prism::EmbDocComment](../class/Prism=3a=3aEmbDocComment.md)(`=begin` 〜
`=end` の埋め込みドキュメント)のどちらかで、このクラス自体のインスタンスが返されることはありません。

- **SEE** [Prism::ParseResult#comments](../method/Prism=3a=3aParseResult/i/comments.md), [Prism?.parse_comments](../method/Prism/m/parse_comments.md)

## Instance Methods

- [location](../method/Prism=3a=3aComment/i/location.md)
- [slice](../method/Prism=3a=3aComment/i/slice.md)
