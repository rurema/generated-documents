# NameError.new

### def NameError.new(error_message = "", name = nil) -> NameError
### def NameError.new(error_message = "", name = nil, receiver:) -> NameError

例外オブジェクトを生成して返します。

- **param** `error_message` -- エラーメッセージを表す文字列です

- **param** `name` -- 未定義だったシンボルです

- **param** `receiver` -- 原因となったメソッド呼び出しのレシーバです

```ruby title="例"
err = NameError.new("message", "foo")
p err       # => #<NameError: message>
p err.name  # => "foo"
```
