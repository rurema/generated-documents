# Prism::Location#leading_comment

### def leading_comment(comment) -> ()

この位置の前に付くコメントとして `comment` を追加します。

[Prism::ParseResult#attach_comments!](../../../method/Prism=3a=3aParseResult/i/attach_comments=21.md) が内部で使用します。追加したコメントは [Prism::Location#leading_comments](../../../method/Prism=3a=3aLocation/i/leading_comments.md) で参照できます。

- **param** `comment` -- 追加する [Prism::Comment](../../../class/Prism=3a=3aComment.md) のサブクラスのインスタンスを指定します。

```ruby title="例"
require "prism"

result = Prism.parse("# leading\na = 1\n")
loc = result.value.statements.body[0].location
comment = result.comments.first

loc.leading_comment(comment)
p loc.leading_comments.map(&:slice)
# => ["# leading"]
```

- **SEE** [Prism::Location#leading_comments](../../../method/Prism=3a=3aLocation/i/leading_comments.md), [Prism::Location#trailing_comment](../../../method/Prism=3a=3aLocation/i/trailing_comment.md)
