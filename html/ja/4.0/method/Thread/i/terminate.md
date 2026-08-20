# Thread#terminate

### def exit         -> self
### def kill         -> self
### def terminate    -> self

スレッドの実行を終了させます。終了時に ensure 節が実行されます。

ただし、スレッドは終了処理中(aborting)にはなりますが、直ちに終了するとは限りません。すでに終了している場合は何もしません。このメソッドにより終了したスレッドの [Thread#value](../../../method/Thread/i/value.md) の返り値は不定です。
自身がメインスレッドであるか最後のスレッドである場合は、プロセスを [`exit(0)`](../../../method/Kernel/m/exit.md)
により終了します。

[Kernel?.exit](../../../method/Kernel/m/exit.md) と違い例外  [SystemExit](../../../class/SystemExit.md) を発生しません。

```ruby
th1 = Thread.new do
  begin
    sleep 10
  ensure
    p "this will be displayed"
  end
end

sleep 0.1
th1.kill

# => "this will be displayed"
```

- **SEE** [Kernel?.exit](../../../method/Kernel/m/exit.md), [Kernel?.exit!](../../../method/Kernel/m/exit=21.md)
