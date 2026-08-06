# TracePoint#path

### def path -> String

イベントが発生したファイルのパスを返します。

- **raise** `RuntimeError` -- イベントフックの外側で実行した場合に発生します。

```ruby title="例"
def foo(ret)
  ret
end
trace = TracePoint.new(:call) do |tp|
  p tp.path # => "/path/to/test.rb"
end
trace.enable
foo 1
```
