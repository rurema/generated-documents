# Exception.exception

### def Exception.new(error_message = nil)       -> Exception
### def Exception.exception(error_message = nil) -> Exception

例外オブジェクトを生成して返します。

- **param** `error_message` -- エラーメッセージを表す文字列を指定します。このメッセージは
                     属性 [Exception#message](../../../method/Exception/i/message.md) の値になり、デフォルトの例外ハンドラで表示されます。

```ruby title="例"
e = Exception.new("some message")
p e         # => #<Exception: some message>
p e.message # => "some message"
```

```ruby title="例"
e = Exception.exception("some message")
p e         # => #<Exception: some message>
p e.message # => "some message"
```
