# Prism::Location#leading_comments

### def leading_comments -> Array

この位置の前に付くコメント([Prism::Comment](../../../class/Prism=3a=3aComment.md) のサブクラスのインスタンス)の配列を返します。
[Prism::ParseResult#attach_comments!](../../../method/Prism=3a=3aParseResult/i/attach_comments=21.md) を呼び出す前は空配列です。

```ruby title="例"
require "prism"

result = Prism.parse("# leading\na = 1 # trailing\n")
result.attach_comments!
loc = result.value.statements.body[0].location
p loc.leading_comments.map { |c| c.slice }  # => ["# leading"]
p loc.trailing_comments.map { |c| c.slice } # => ["# trailing"]
```
