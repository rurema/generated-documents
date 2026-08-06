# IO#timeout=

### def timeout=(numeric) -> Numeric
### def timeout=(nil) -> nil

self に入出力のタイムアウトを秒単位で設定します。

設定すると、可能な限りすべてのブロッキング操作にこのタイムアウトが適用されます。
操作が設定した時間を超えると [IO::TimeoutError](../../../class/IO=3a=3aTimeoutError.md) が発生します。

影響を受けるのは [IO#gets](../../../method/IO/i/gets.md)、[IO#puts](../../../method/IO/i/puts.md)、[IO#read](../../../method/IO/i/read.md)、[IO#write](../../../method/IO/i/write.md)、
[IO#wait_readable](../../../method/IO/i/wait_readable.md)、[IO#wait_writable](../../../method/IO/i/wait_writable.md) などです
([Socket](../../../class/Socket.md) のブロッキング操作にも影響します)。

- **param** `numeric` -- タイムアウトの秒数を数値で指定します。
             nil を指定するとタイムアウトを解除します。

```ruby title="例"
r, w = IO.pipe
r.timeout = 0.1

r.read # ~> IO::TimeoutError
```

- **SEE** [IO#timeout](../../../method/IO/i/timeout.md), [IO::TimeoutError](../../../class/IO=3a=3aTimeoutError.md)
