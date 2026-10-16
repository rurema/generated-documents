# Thread#raise

### def raise                                                        -> ()
### def raise(message, cause: $!)                                    -> ()
### def raise(error_type, message = nil, traceback = nil, cause: $!) -> ()

自身が表すスレッドで強制的に例外を発生させます。

引数を渡さない場合は [RuntimeError](../../../class/RuntimeError.md) を発生させます。`message` だけを渡した場合は、`message` をメッセージとした [RuntimeError](../../../class/RuntimeError.md) を発生させます。引数の意味は [Kernel?.raise](../../../method/Kernel/m/raise.md) と同じです。

- **param** `error_type` -- [Kernel?.raise](../../../method/Kernel/m/raise.md) を参照してください。

- **param** `message` -- [Kernel?.raise](../../../method/Kernel/m/raise.md) を参照してください。

- **param** `traceback` -- [Kernel?.raise](../../../method/Kernel/m/raise.md) を参照してください。省略した場合は、例外が発生した時点でのそのスレッドのバックトレースになります。

- **param** `cause` -- 現在の例外([m:$!])の代わりに [Exception#cause](../../../method/Exception/i/cause.md) に設定する例外を指定します。[Exception](../../../class/Exception.md) オブジェクトまたは nil を指定できます。Ruby 4.0 から指定できます。

```text
Thread.new {
  sleep 1
  Thread.main.raise "foobar"
}

begin
  sleep
rescue
  p $!, $@
end

=> #<RuntimeError: foobar>
   ["-:3"]
```


```ruby title="例: cause: を指定する"
th = Thread.new do
  begin
    sleep
  rescue => e
    e
  end
end
sleep 0.1 until th.status == "sleep"
th.raise(ArgumentError, "foo", cause: RuntimeError.new("bar"))
e = th.value
p e        # => #<ArgumentError: foo>
p e.cause  # => #<RuntimeError: bar>
```
