# CSV::MalformedCSVError.new

### def CSV::MalformedCSVError.new(message, line_number) -> CSV::MalformedCSVError
{: since="2.6.0"}

例外オブジェクトを生成して返します。

例外のメッセージは `message` の後ろに `" in line #{line_number}."` を付けたものになります。`line_number` は [CSV::MalformedCSVError#line_number](../../../method/CSV=3a=3aMalformedCSVError/i/line_number.md) の戻り値になります。

- **param** `message` -- エラーメッセージを表す文字列を指定します。
- **param** `line_number` -- 例外が発生した行の行番号を指定します。

```ruby title="例"
require "csv"

e = CSV::MalformedCSVError.new("Illegal quoting", 3)
p e.message     # => "Illegal quoting in line 3."
p e.line_number # => 3
```
