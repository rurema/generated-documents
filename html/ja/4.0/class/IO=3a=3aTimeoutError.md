# class IO::TimeoutError < IOError

入出力の操作が [IO#timeout=](../method/IO/i/timeout=3d.md) で設定した時間を超えたときに発生します。

```ruby
r, w = IO.pipe
r.timeout = 0.1

r.read # ~> IO::TimeoutError
```

- **SEE** [IO#timeout=](../method/IO/i/timeout=3d.md), [IO#timeout](../method/IO/i/timeout.md)
