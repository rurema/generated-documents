# class Ractor::ClosedError < StopIteration

閉じられた Ractor のポートに対して送受信を行おうとした場合に発生します。

[StopIteration](../class/StopIteration.md) のサブクラスであるため、[Kernel?.loop](../method/Kernel/m/loop.md) の中で発生した場合はループを終了させます。他の Ractor に関する例外と異なり、
[Ractor::Error](../class/Ractor=3a=3aError.md) のサブクラスではないことに注意してください。

```ruby
r = Ractor.new do
  Ractor.current.close
  Ractor.receive # ここで Ractor::ClosedError が発生する
end

begin
  r.value
rescue Ractor::RemoteError => e
  # 他の Ractor で発生した例外は Ractor::RemoteError に包まれて伝わる
  p e.cause.class # => Ractor::ClosedError
end
```

- **SEE** [Ractor](../class/Ractor.md), [StopIteration](../class/StopIteration.md)
