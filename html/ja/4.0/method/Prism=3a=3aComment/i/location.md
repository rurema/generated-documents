# Prism::Comment#location

### def location -> Prism::Location

コメントのソースコード上の位置を表す [Prism::Location](../../../class/Prism=3a=3aLocation.md) を返します。
コメントの文字列そのものは `location.slice` で取得できます。

```ruby title="例"
require "prism"

comment = Prism.parse("# hello\n1 + 1").comments.first
p comment.location.start_line # => 1
p comment.location.slice      # => "# hello"
```
