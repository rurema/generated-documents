# Prism::Comment#slice

### def slice -> String

コメントの文字列そのものを返します。`location.slice` の短縮形です。

```ruby title="例"
require "prism"

comment = Prism.parse("# hello\n1 + 1").comments.first
p comment.slice # => "# hello"
```
