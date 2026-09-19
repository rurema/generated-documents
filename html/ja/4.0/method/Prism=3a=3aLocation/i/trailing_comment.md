# Prism::Location#trailing_comment

### def trailing_comment(comment) -> ()

この位置の後ろに付くコメントとして `comment` を追加します。

[Prism::ParseResult#attach_comments!](../../../method/Prism=3a=3aParseResult/i/attach_comments=21.md) が内部で使用します。追加したコメントは [Prism::Location#trailing_comments](../../../method/Prism=3a=3aLocation/i/trailing_comments.md) で参照できます。

- **param** `comment` -- 追加する [Prism::Comment](../../../class/Prism=3a=3aComment.md) のサブクラスのインスタンスを指定します。

```ruby title="例"
require "prism"

result = Prism.parse("a = 1 # trailing\n")
loc = result.value.statements.body[0].location
comment = result.comments.first

loc.trailing_comment(comment)
p loc.trailing_comments.map(&:slice)
# => ["# trailing"]
```

- **SEE** [Prism::Location#trailing_comments](../../../method/Prism=3a=3aLocation/i/trailing_comments.md), [Prism::Location#leading_comment](../../../method/Prism=3a=3aLocation/i/leading_comment.md)
