# Prism::ParseResult#attach_comments!

### def attach_comments! -> Array

[Prism::ParseResult#comments](../../../method/Prism=3a=3aParseResult/i/comments.md) の各コメントを、前後の位置関係から構文木の各ノードの位置情報([Prism::Location](../../../class/Prism=3a=3aLocation.md))に関連付けます。
関連付けた結果は [Prism::Location#leading_comments](../../../method/Prism=3a=3aLocation/i/leading_comments.md)・
[Prism::Location#trailing_comments](../../../method/Prism=3a=3aLocation/i/trailing_comments.md)・[Prism::Location#comments](../../../method/Prism=3a=3aLocation/i/comments.md) で参照できます。

戻り値は [Prism::ParseResult#comments](../../../method/Prism=3a=3aParseResult/i/comments.md) と同じ配列です。

```ruby title="例"
require "prism"

result = Prism.parse("# leading\na = 1\n")
result.attach_comments!
loc = result.value.statements.body[0].location
p loc.comments.map { |c| c.location.slice } # => ["# leading"]
```
