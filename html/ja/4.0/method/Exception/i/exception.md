# Exception#exception

### def exception                   -> self
### def exception(error_message)    -> Exception

引数を指定しない場合は self を返します。引数を指定した場合 自身のコピーを生成し [Exception#message](../../../method/Exception/i/message.md) 属性を error_message にして返します。

[Kernel?.raise](../../../method/Kernel/m/raise.md) は、実質的に、例外オブジェクトの exception
メソッドの呼び出しです。

- **param** `error_message` -- エラーメッセージを表す文字列を指定します。

```ruby title="例"
begin
  # ...        # 何か処理
rescue => e
  raise e.exception("an error occurs during hogehoge process")  # 詳しいエラーメッセージ
end
```
