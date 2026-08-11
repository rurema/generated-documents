# TracePoint#eval_script

### def eval_script -> String | nil

script_compiledイベント発生時にコンパイルされたソースコードを返します。
ファイルから読み込んだ場合は、nilを返します。

```ruby title="例"
TracePoint.new(:script_compiled) do |tp|
  p tp.eval_script # => "puts 'hello'"
end.enable do
  eval("puts 'hello'")
end
```

- **raise** `RuntimeError` -- :script_compiled イベントのためのイベントフックの外側で実行した場合に発生します。
