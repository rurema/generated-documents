# FrozenError.new

### def FrozenError.new(error_message = "") -> FrozenError
### def FrozenError.new(error_message = "", receiver:) -> FrozenError

例外オブジェクトを生成して返します。

- **param** `error_message` -- エラーメッセージを表す文字列です

- **param** `receiver` -- 原因となったメソッド呼び出しのレシーバです

```ruby
err = FrozenError.new("message")
p err       # => #<FrozenError: message>
```
