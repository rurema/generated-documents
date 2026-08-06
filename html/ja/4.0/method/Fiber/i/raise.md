# Fiber#raise

### def raise                                            -> object
### def raise(message)                                   -> object
### def raise(exception, message = nil, backtrace = nil) -> object

selfが表すファイバーが最後に [Fiber.yield](../../../method/Fiber/s/yield.md) を呼んだ場所で例外を発生させます。

Fiber.yield が呼ばれていないかファイバーがすでに終了している場合、
[FiberError](../../../class/FiberError.md) が発生します。

引数を渡さない場合、[RuntimeError](../../../class/RuntimeError.md) が発生します。
message 引数を渡した場合、message 引数をメッセージとした RuntimeError
が発生します。

その他のケースでは、最初の引数は [Exception](../../../class/Exception.md) か Exception
のインスタンスを返す exception メソッドを持ったオブジェクトである必要があります。
この場合、2つ目の引数に例外のメッセージを渡せます。また3つ目の引数に例外発生時のスタックトレースを指定できます。

- **param** `message` -- 例外のメッセージとなる文字列です。
- **param** `exception` -- 発生させる例外です。
- **param** `backtrace` -- 例外発生時のスタックトレースです。文字列の配列、または [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) の配列で指定します。

```ruby title="例"
f = Fiber.new { Fiber.yield }
f.resume
f.raise "Error!" # => Error! (RuntimeError)
```

```ruby title="ファイバー内のイテレーションを終了させる例"
f = Fiber.new do
  loop do
    Fiber.yield(:loop)
  end
  :exit
end

p f.resume              # => :loop
p f.raise StopIteration # => :exit
```
