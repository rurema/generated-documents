# Exception.exception

### def Exception.exception(error_message = nil) -> Exception

例外オブジェクトを生成して返します。引数無しの [Exception.new](../../../method/Exception/s/new.md) と同じです。

- **param** `error_message` -- エラーメッセージを表す文字列を指定します。このメッセージは属性 [Exception#message](../../../method/Exception/i/message.md) の値になり、デフォルトの例外ハンドラで表示されます。

```ruby title="例"
e = Exception.exception("some message")
p e         # => #<Exception: some message>
p e.message # => "some message"
```

- **SEE** [Exception.new](../../../method/Exception/s/new.md), [Exception#exception](../../../method/Exception/i/exception.md)
