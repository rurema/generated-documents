# Fiber#kill

### def kill -> self | false

`self` が表すファイバーを終了させます。

捕捉できない例外を発生させて終了させるため、ensure 節は実行されます。

まだ開始されていないファイバーに対して呼んだ場合は、ブロックを実行せずに終了状態にします。
すでに終了しているファイバーに対して呼んだ場合は何もしません。

`self` 以外のファイバーを終了させられるのは、そのファイバーが [Fiber.yield](../../../method/Fiber/s/yield.md) で停止している場合だけです。
`self` に対して呼んだ場合は、kill を呼んだ場所で例外が発生します。

- **return** -- `self` を返します。すでに kill 済みの場合は false を返します。
- **raise** `FiberError` -- 他のスレッドに属するファイバーに対して呼んだ場合に発生します。

```ruby
f = Fiber.new do
  begin
    Fiber.yield :a
    Fiber.yield :b
  ensure
    puts "ensure は実行される"
  end
end

p f.resume # => :a
f.kill     # "ensure は実行される" が出力される
p f.alive? # => false
```

- **SEE** [Thread#kill](../../../method/Thread/i/kill.md)
