# Net::HTTP#set_debug_output

### def set_debug_output(io) -> ()

デバッグ出力の出力先を指定します。
このメソッドは深刻なセキュリティホールの原因になるため、デバッグ以外では決して使わないでください。

io に nil を指定するとデバッグ出力を止めます。

- **param** `io` -- 出力先を指定します。このオブジェクトはメソッド << を持っている必要があります。

```ruby title="例"
http.set_debug_output($stderr)
```
