# Prism::Location#start_line_slice

### def start_line_slice -> String

開始位置がある行の、行頭から開始位置の直前までの文字列を返します。

```ruby title="例"
require "prism"

loc = Prism.parse("x = 1").value.statements.body[0].value.location
p loc.slice            # => "1"
p loc.start_line_slice # => "x = "
```
